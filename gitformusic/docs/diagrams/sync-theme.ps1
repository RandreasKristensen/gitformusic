$diagramDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
$themePath = Join-Path $diagramDirectory 'theme.json'
$theme = Get-Content -Raw -Path $themePath | ConvertFrom-Json

$initConfig = [ordered]@{
    theme = $theme.theme
    themeVariables = [ordered]@{}
}

foreach ($property in $theme.themeVariables.PSObject.Properties) {
    $initConfig.themeVariables[$property.Name] = $property.Value
}

$directive = "%%{init: $($initConfig | ConvertTo-Json -Compress -Depth 4)}%%"
$utf8WithoutBom = New-Object System.Text.UTF8Encoding($false)

Get-ChildItem -Path $diagramDirectory -Filter '*.mmd' | ForEach-Object {
    $content = [System.IO.File]::ReadAllText($_.FullName)
    $updatedContent = [regex]::Replace(
        $content,
        '^%%\{init:.*?\}%%\r?\n',
        "$directive`r`n",
        [System.Text.RegularExpressions.RegexOptions]::Singleline
    )

    if ($updatedContent -eq $content) {
        throw "No Mermaid init directive found in $($_.Name)"
    }

    [System.IO.File]::WriteAllText($_.FullName, $updatedContent, $utf8WithoutBom)
    Write-Output "Updated $($_.Name)"
}
