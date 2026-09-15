#!/usr/bin/env node
// Split the canonical generator's flat Swift output into resource-owned files.
// Run after regenerating Sources/Inttegro/Generated.swift.
import { execFileSync } from 'node:child_process';
import { existsSync, mkdirSync, readFileSync, readdirSync, unlinkSync, writeFileSync } from 'node:fs';
import { dirname, join, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const sourcePath = join(root, 'Sources', 'Inttegro', 'Generated.swift');
const outputRoot = join(root, 'Sources', 'Inttegro', 'Models');
const sourceHeader = '// Generated typed Inttegro domain and request values. Do not edit manually.\nimport Foundation\n\n';
const modelHeader = '// Generated typed Inttegro domain or request value. Do not edit manually.\nimport Foundation\n\n';

const families = [
  ['purchase_intent', ['PurchaseIntent']],
  ['payment_method', ['PaymentMethod']],
  ['balance_transaction', ['BalanceTransaction']],
  ['message_template', ['MessageTemplate']],
  ['financial_account', ['FinancialAccount']],
  ['upload_request', ['UploadRequest', 'UploadReview', 'ReviewUpload']],
  ['file_link', ['FileLink']],
  ['secret_key', ['SecretKey']],
  ['bank_account', ['BankAccount']],
  ['country', ['Country']],
  ['checkout', ['Checkout']],
  ['broadcast', ['Broadcast']],
  ['customer', ['Customer']],
  ['payment', ['Payment']],
  ['payout', ['Payout']],
  ['product', ['Product']],
  ['refund', ['Refund']],
  ['order', ['Order']],
  ['chime', ['Chime']],
  ['balance', ['Balance']],
  ['wallet', ['Wallet']],
  ['price', ['Price']],
  ['file', ['File']],
  ['otp', ['OTP']],
  ['app', ['Application', 'App']],
];
const verbs = /^(?:Activate|Add|Archive|Cancel|Collect|Confirm|Connect|Create|Delete|Disable|Disactivate|Disconnect|Enable|Fulfill|Get|Lookup|Open|Page|Reconnect|Render|Request|Revoke|Review|Send|Set|Submit|Tokenize|Unarchive|Update|Verify)/;
const overrides = {
  AddressInput: 'shared',
  Amount: 'money', AmountParams: 'money', Currency: 'money',
  BalanceValue: 'balance', BillingDetailsInput: 'checkout',
  ContentSafetyStatus: 'shared', DeliveryChannel: 'shared',
  Error: 'shared', InvoiceSettings: 'checkout', InvoiceSettingsInput: 'checkout',
  JSONValue: 'shared', LineItemInput: 'order', LineItemType: 'order',
  MobileMoneyNetwork: 'wallet', ResourceSupply: 'product',
  ShippingDetailsInput: 'checkout', ShippingInput: 'order', ShippingLineItemInput: 'order',
};

function familyFor(name) {
  if (overrides[name]) return overrides[name];
  let stem = name;
  while (verbs.test(stem)) stem = stem.replace(verbs, '');
  for (const [family, prefixes] of families) {
    if (prefixes.some((prefix) => stem.startsWith(prefix))) return family;
  }
  if (stem.includes('PaymentMethod')) return 'payment_method';
  if (stem.includes('MessageTemplate')) return 'message_template';
  if (stem.includes('SecretKey')) return 'secret_key';
  if (stem.includes('Payout')) return 'payout';
  if (stem.includes('Upload')) return 'upload_request';
  if (stem.includes('Order')) return 'order';
  if (stem.includes('Product')) return 'product';
  if (stem.includes('OTP')) return 'otp';
  if (stem.includes('BankAccount')) return 'bank_account';
  if (stem.includes('File')) return 'file';
  if (stem.includes('Price')) return 'price';
  if (stem.includes('Country')) return 'country';
  if (stem.startsWith('CurrencyBalance')) return 'balance';
  if (stem.startsWith('FinancialInstitution')) return 'financial_account';
  if (/^(?:Fee|LineItem)/.test(stem)) return 'order';
  if (/^(?:Invoice|Billing)/.test(stem)) return 'checkout';
  if (/^Schedule/.test(stem)) return 'chime';
  if (stem === 'ConfirmationRequest') return 'order';
  return 'shared';
}

function fileName(name) {
  return name
    .replace(/IDs\b/g, 'Ids')
    .replace(/([A-Z]+)([A-Z][a-z])/g, '$1_$2')
    .replace(/([a-z0-9])([A-Z])/g, '$1_$2')
    .toLowerCase() + '.swift';
}

function declarationStart(source, offset) {
  let start = source.lastIndexOf('\n', offset - 1) + 1;
  while (start > 0) {
    const previousEnd = start - 1;
    const previousStart = source.lastIndexOf('\n', previousEnd - 1) + 1;
    const line = source.slice(previousStart, previousEnd).trim();
    if (line === '' || line.startsWith('///') || line.startsWith('@available')) {
      start = previousStart;
    } else {
      break;
    }
  }
  return start;
}

function replaceableGeneratedFile(path, contents, expectedHeader) {
  if (!existsSync(path) || readFileSync(path, 'utf8') === contents) return true;
  if (!readFileSync(path, 'utf8').startsWith(expectedHeader)) return false;
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

if (process.argv.includes('--check')) {
  if (existsSync(sourcePath)) throw new Error('Generated.swift is still a monolith');
  const families = readdirSync(outputRoot, { withFileTypes: true }).filter((entry) => entry.isDirectory());
  const files = families.flatMap((family) => readdirSync(join(outputRoot, family.name)).filter((name) => name.endsWith('.swift') && !name.startsWith('client_')));
  if (files.length < 400) throw new Error(`Expected at least 400 split models, found ${files.length}`);
  console.log(`Verified ${files.length} resource-owned Swift model files`);
  process.exit(0);
}

if (!existsSync(sourcePath)) throw new Error('Regenerate Sources/Inttegro/Generated.swift before splitting it');
const source = readFileSync(sourcePath, 'utf8');
if (!source.startsWith(sourceHeader)) throw new Error('Unexpected generated Swift header; refusing to split');
const matches = [...source.matchAll(/^public (?:struct|enum|typealias) ([A-Za-z][A-Za-z0-9_]*)/gm)];
if (matches.length < 400) throw new Error(`Expected at least 400 Swift declarations, found ${matches.length}`);
const starts = matches.map((match) => declarationStart(source, match.index));
if (starts.some((start, index) => index > 0 && start <= starts[index - 1])) {
  throw new Error('Overlapping declaration ranges');
}
if (source.slice(sourceHeader.length, starts[0]).trim()) throw new Error('Unassigned Swift preamble');

const outputs = new Map();
for (let index = 0; index < matches.length; index++) {
  const name = matches[index][1];
  const body = source.slice(starts[index], starts[index + 1] ?? source.length).trim();
  const path = join(outputRoot, familyFor(name), fileName(name));
  if (outputs.has(path)) throw new Error(`Duplicate generated file ${path}`);
  if (!replaceableGeneratedFile(path, modelHeader + body + '\n', modelHeader)) {
    throw new Error(`Refusing to overwrite modified model ${path}`);
  }
  outputs.set(path, modelHeader + body + '\n');
}

for (const [path, contents] of outputs) {
  mkdirSync(dirname(path), { recursive: true });
  writeFileSync(path, contents);
}
unlinkSync(sourcePath);
console.log(`Split ${outputs.size} Swift declarations across resource folders`);
