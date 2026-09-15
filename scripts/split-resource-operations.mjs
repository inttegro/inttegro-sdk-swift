#!/usr/bin/env node
// Keep generated API clients alongside the models of their resource.
// Run after regenerating Sources/Inttegro/Resources.swift.
import { execFileSync } from 'node:child_process';
import { existsSync, mkdirSync, readFileSync, unlinkSync, writeFileSync } from 'node:fs';
import { dirname, join, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const input = join(root, 'Sources', 'Inttegro', 'Resources.swift');
const outputRoot = join(root, 'Sources', 'Inttegro', 'Models');
const header = '// Typed Inttegro API resources.\nimport Foundation\n\n';
const families = {
  Apps: 'app', BalanceTransactions: 'balance_transaction', Balances: 'balance',
  Broadcasts: 'broadcast', Chimes: 'chime', Customers: 'customer',
  FileLinks: 'file_link', FileReferences: 'file', Files: 'file',
  FinancialAccounts: 'financial_account', Keys: 'secret_key',
  MessageTemplates: 'message_template', Orders: 'order', Otp: 'otp',
  PaymentMethods: 'payment_method', Payouts: 'payout', Prices: 'price',
  Products: 'product', PurchaseIntents: 'purchase_intent', Refunds: 'refund',
  Schedules: 'chime', Specifications: 'country', UploadRequests: 'upload_request',
};

if (process.argv.includes('--check')) {
  if (existsSync(input)) throw new Error('Resources.swift is still monolithic');
  const files = Object.entries(families).filter(([name, family]) => existsSync(join(outputRoot, family, `client_${snake(name)}.swift`)));
  if (files.length !== Object.keys(families).length) throw new Error(`Only ${files.length} of 23 resource clients are split`);
  console.log('Verified 23 resource-owned Swift API clients');
  process.exit(0);
}

function snake(name) {
  return name.replace(/([A-Z]+)([A-Z][a-z])/g, '$1_$2').replace(/([a-z0-9])([A-Z])/g, '$1_$2').toLowerCase();
}

function replaceableClient(path, contents) {
  if (!existsSync(path) || readFileSync(path, 'utf8') === contents) return true;
  if (!readFileSync(path, 'utf8').startsWith('// Typed Inttegro API resource operations.')) return false;
  const relativePath = path.slice(root.length + 1);
  try {
    execFileSync('git', ['ls-files', '--error-unmatch', '--', relativePath], { cwd: root, stdio: 'ignore' });
    execFileSync('git', ['diff', '--quiet', '--', relativePath], { cwd: root, stdio: 'ignore' });
    execFileSync('git', ['diff', '--cached', '--quiet', '--', relativePath], { cwd: root, stdio: 'ignore' });
    return true;
  } catch {
    return false;
  }
}

if (!existsSync(input)) throw new Error('Regenerate Sources/Inttegro/Resources.swift before splitting it');
const source = readFileSync(input, 'utf8');
if (!source.startsWith(header)) throw new Error('Unexpected Swift resource header');
const matches = [...source.matchAll(/^public struct ([A-Za-z][A-Za-z0-9_]*): Sendable/gm)];
if (matches.length !== Object.keys(families).length) throw new Error(`Expected 23 clients, found ${matches.length}`);
const starts = matches.map((match) => {
  let start = source.lastIndexOf('\n', match.index - 1) + 1;
  while (start > 0) {
    const end = start - 1;
    const previous = source.lastIndexOf('\n', end - 1) + 1;
    const line = source.slice(previous, end).trim();
    if (line === '' || line.startsWith('///')) start = previous;
    else break;
  }
  return start;
});
if (source.slice(header.length, starts[0]).trim()) throw new Error('Unassigned Swift resource preamble');
const outputs = new Map();
for (let index = 0; index < matches.length; index++) {
  const name = matches[index][1];
  const family = families[name];
  if (!family) throw new Error(`Unclassified resource client ${name}`);
  const body = source.slice(starts[index], starts[index + 1] ?? source.length).trim();
  const path = join(outputRoot, family, `client_${snake(name)}.swift`);
  if (outputs.has(path)) throw new Error(`Duplicate resource client ${path}`);
  const contents = '// Typed Inttegro API resource operations.\nimport Foundation\n\n' + body + '\n';
  if (!replaceableClient(path, contents)) throw new Error(`Refusing to overwrite modified client ${path}`);
  outputs.set(path, contents);
}
for (const [path, contents] of outputs) {
  mkdirSync(dirname(path), { recursive: true });
  writeFileSync(path, contents);
}
unlinkSync(input);
console.log(`Split ${outputs.size} Swift API clients by resource`);
