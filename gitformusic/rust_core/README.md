# Rust Core

The Rust core is the local data-plane engine. It will own repository storage, content-addressed versioning, working-tree operations, cryptographic identity, and peer-to-peer synchronization. The C-compatible API is the boundary used by the C++/JUCE desktop shell.

## Architecture references

- [Rust core architecture](../docs/diagrams/02-rust-core.mmd)
- [Desktop application boundaries](../docs/diagrams/07-desktop.mmd)
- [Dependency direction](../docs/diagrams/00-dependency-direction.mmd)
- [P2P synchronization flow](../docs/diagrams/04-p2p-sync.mmd)
- [Data ownership and storage](../docs/diagrams/05-data-storage.mmd)
- [Identity and security](../docs/diagrams/06-security.mmd)

The intended dependency direction is interface -> application services -> object model/storage and synchronization services -> transport/cryptography. The core stores project contents locally; the cloud coordinates identity and peer discovery but does not persist project contents.

## Build

This directory currently contains documentation only: there is no `Cargo.toml` or Rust source to compile.

When the crate is added:

1. Install the stable Rust toolchain with `rustup`.
2. From this directory, run `cargo build` for a debug build.
3. Run `cargo test` for unit and integration tests.
4. Run `cargo build --release` for an optimized client build.

The future crate should expose a stable C-compatible API separately from its internal Rust modules. Platform-specific packaging and the C++/JUCE shell are outside this directory.