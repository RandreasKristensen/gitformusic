# Documentation

This directory contains architecture notes and Mermaid diagrams for the open-source portions of Git for Music. The diagrams describe boundaries with the proprietary C# cloud/backend and C++/JUCE shell where those systems participate in the overall design; their implementation documentation will live in their separate projects.

## Diagram references

- [Architecture overview](diagrams/00-architecture.mmd)
- [Dependency direction](diagrams/00-dependency-direction.mmd)
- [System overview](diagrams/01-systems-overview.mmd)
- [Rust core](diagrams/02-rust-core.mmd)
- [Cloud backend reference](diagrams/03-cloud-backend.mmd)
- [P2P synchronization](diagrams/04-p2p-sync.mmd)
- [Data ownership and storage](diagrams/05-data-storage.mmd)
- [Identity and security](diagrams/06-security.mmd)
- [Desktop boundaries](diagrams/07-desktop.mmd)

The [diagram README](diagrams/README.md) explains the shared Mermaid theme and how to regenerate embedded theme directives.

## Build and maintenance

Documentation does not have a compiled build step. GitHub renders the `.mmd` files when linked from Markdown, and the files can also be opened in any Mermaid-compatible editor.

After changing `theme.json`, run the following from the repository root so every diagram keeps the same embedded theme:

```powershell
.\docs\diagrams\sync-theme.ps1
```

The architecture diagrams are design references, not evidence that an implementation already exists. Component build instructions belong in the README for that component.
