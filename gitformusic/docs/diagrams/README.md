# Diagram theme

This directory contains the repository's Mermaid architecture diagrams. Start with the [documentation index](../README.md) or the [repository README](../../README.md) for component context.

## Diagram index

- [Architecture overview](00-architecture.mmd): control plane, data plane, and direct peer connections.
- [Dependency direction](00-dependency-direction.mmd): Angular, JUCE, FFI, and Rust dependency flow.
- [System overview](01-systems-overview.mmd): two clients, cloud coordination, local stores, and P2P transfer.
- [Rust core](02-rust-core.mmd): core interfaces, versioning, storage, synchronization, networking, and cryptography.
- [Cloud backend](03-cloud-backend.mmd): proprietary C# service domains and persistent infrastructure. This is reference architecture only in this repository.
- [P2P synchronization](04-p2p-sync.mmd): missing-object transfer between two Rust cores.
- [Data ownership](05-data-storage.mmd): local, cloud, and peer storage boundaries.
- [Security](06-security.mmd): account identity, device keys, authorization, and encrypted peer traffic.
- [Desktop boundaries](07-desktop.mmd): Angular, JUCE, C-compatible API, and Rust boundaries.

The shared Mermaid theme is defined in [theme.json](theme.json).

After editing the theme, run this from the repository root:

```powershell
.\docs\diagrams\sync-theme.ps1
```

The script copies the theme into each `.mmd` file's Mermaid init directive. The generated directives stay in the diagram files so GitHub can render them without loading an external configuration file.
