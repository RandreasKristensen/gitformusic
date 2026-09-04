# Protocol

This directory is reserved for protocol definitions shared by the open-source client components. The intended protocol surface includes peer identity, synchronization sessions, object inventory negotiation, object transfer, integrity verification, and reference updates.

## Architecture references

- [Rust core synchronization architecture](../docs/diagrams/02-rust-core.mmd)
- [P2P synchronization flow](../docs/diagrams/04-p2p-sync.mmd)
- [Desktop component boundaries](../docs/diagrams/07-desktop.mmd)
- [Identity and security](../docs/diagrams/06-security.mmd)

The cloud/backend diagrams show coordination endpoints only. They do not define an implementation contract for the private C# services.

## Build

There are currently no protocol files or build commands in this directory. When definitions are added, document their source format, generated artifacts, compatibility policy, and validation command here. Protocol changes should be validated against both Rust peers before they are used by the desktop client.
