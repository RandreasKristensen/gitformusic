# Diagram theme

The shared Mermaid theme is defined in [theme.json](theme.json).

After editing the theme, run this from the repository root:

```powershell
.\docs\diagrams\sync-theme.ps1
```

The script copies the theme into each `.mmd` file's Mermaid init directive. The generated directives stay in the diagram files so GitHub can render them without loading an external configuration file.
