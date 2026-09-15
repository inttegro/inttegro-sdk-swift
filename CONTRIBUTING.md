# Contributing

Open an issue before proposing a public API change. Pull requests must preserve
typed domain returns, keep HTTP envelopes private, include tests, and pass every
required workflow. Generated contract files are reviewed as source; regeneration
tools are maintained outside this public repository.

Generated models and API clients live under `Sources/Inttegro/Models/<resource>/`.
Each model has its own file; `client_<resource>.swift` contains that resource's
operations. These folders belong to the single `Inttegro` SwiftPM target, so
existing public names such as `PaymentMethod` do not change.

After the external contract generator writes its flat intermediate files, split
them before reviewing or committing generated code:

```sh
node scripts/split-generated-models.mjs
node scripts/split-resource-operations.mjs
node scripts/split-generated-models.mjs --check
node scripts/split-resource-operations.mjs --check
swift test
```

The splitters refuse to overwrite dirty generated files. Review any contract
change at its resource path, including the model and its operation client.
