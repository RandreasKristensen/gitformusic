# Git for Music

Git for Music is a cross-platform system for versioning and sharing music projects. The repository contains the open-source client pieces: the Rust core and the Angular frontend. The C# cloud/backend is proprietary and lives in a separate repository.

> We host the collaboration. You own the files.

## Repository components

| Directory | Responsibility | Build status |
| --- | --- | --- |
| [`rust_core`](rust_core/README.md) | Local storage, versioning, and peer-to-peer synchronization engine | Design documentation only; no Cargo manifest or Rust source is present yet |
| [`angular-frontend`](angular-frontend/README.md) | Angular presentation layer for the desktop/web client | Documentation only; no Node manifest or frontend source is present yet |
| [`protocol`](protocol/README.md) | Shared protocol boundary for client components | Directory reserved for protocol definitions; no files are present yet |
| [`infra`](infra/README.md) | Repository-local infrastructure boundary | Directory reserved for open-source client infrastructure; no files are present yet |
| [`docs`](docs/README.md) | Architecture and design documentation | Mermaid diagrams are committed and can be rendered by GitHub |

The C++/JUCE integration layer and C# cloud services are represented in the architecture diagrams but are not implemented in this repository.

## Architecture references

- [Architecture overview](docs/diagrams/00-architecture.mmd)
- [Dependency direction](docs/diagrams/00-dependency-direction.mmd)
- [System overview](docs/diagrams/01-systems-overview.mmd)
- [Desktop boundaries](docs/diagrams/07-desktop.mmd)
- [Data ownership and storage](docs/diagrams/05-data-storage.mmd)
- [Identity and security](docs/diagrams/06-security.mmd)

See [`docs/README.md`](docs/README.md) for the complete diagram index and diagram maintenance instructions.

## Build overview

There is not yet a buildable application in this checkout. The component READMEs describe the expected commands once their manifests and source files are added:

- Rust: install a stable Rust toolchain, then run `cargo build` from [`rust_core`](rust_core/README.md).
- Angular: install a supported Node.js version, then run `npm ci` and `npm run build` from [`angular-frontend`](angular-frontend/README.md).
- Protocol and infrastructure: no build commands exist until files are added to those directories.

Do not use the C# backend build steps from this repository; that component is maintained separately.
