# Angular Frontend

The Angular frontend is the presentation layer for the Git for Music client. It is expected to run as a web application and to be hosted inside the desktop shell through the C++/JUCE integration layer. It communicates with the proprietary cloud services through GraphQL; project content remains owned and stored by the local client according to the [data ownership diagram](../docs/diagrams/05-data-storage.mmd).

## Architecture references

- [System overview](../docs/diagrams/01-systems-overview.mmd)
- [Dependency direction](../docs/diagrams/00-dependency-direction.mmd)
- [Desktop application boundaries](../docs/diagrams/07-desktop.mmd)
- [P2P synchronization flow](../docs/diagrams/04-p2p-sync.mmd)
- [Identity and security](../docs/diagrams/06-security.mmd)

The Angular UI calls the native shell. The shell is responsible for crossing into the C-compatible Rust API; the frontend should not depend directly on Rust implementation details.

## Build

This directory currently contains documentation only: there is no `package.json`, Angular workspace, or TypeScript source to build.

When the Angular workspace is added:

1. Install a supported LTS version of Node.js and npm.
2. From this directory, run `npm ci` to install the lockfile-defined dependencies.
3. Run `npm run build` for a production build, or `npm start` for local development if those scripts are provided by the workspace.

The exact Node.js and Angular versions should be recorded in the future `package.json` and lockfile. Do not add C# backend build steps here; those belong to the private backend project.