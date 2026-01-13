$dir='src\main\resources\archivos'
Write-Output "Applying optimized images in $dir (backups will be created as <name>.png.bak)"
$origFiles = Get-ChildItem $dir -File -Filter '*.png' | Where-Object { $_.Name -notlike '*.opt.*' }
foreach ($f in $origFiles) {
    $base = $f.BaseName
    # find any candidates that include .opt in the name
    $cands = Get-ChildItem $dir -File | Where-Object { $_.Name -match ([regex]::Escape($base) + '\.opt(\.opt)*\.png$') }
    if ($cands.Count -eq 0) { continue }
    # choose candidate with minimal number of .opt occurrences
    $chosen = $cands | Sort-Object {[regex]::Matches($_.Name,'\.opt').Count} | Select-Object -First 1
    if ($null -eq $chosen) { continue }

    $origPath = $f.FullName
    $bakPath = $origPath + '.bak'
    if (-not (Test-Path $bakPath)) {
        Write-Output "Backing up $origPath -> $bakPath"
        Move-Item -Path $origPath -Destination $bakPath
    } else {
        Write-Output "Backup already exists for $origPath -> $bakPath"
        # Remove original to make place for optimized
        Remove-Item -Path $origPath -Force
    }

    Write-Output "Replacing with optimized: $($chosen.Name) -> $($f.Name)"
    Move-Item -Path $chosen.FullName -Destination $origPath -Force

    # remove other redundant opt candidates for this base
    $others = Get-ChildItem $dir -File | Where-Object { $_.Name -match ([regex]::Escape($base) + '\.opt(\.opt)+\.png$') }
    foreach ($o in $others) {
        Write-Output "Removing redundant candidate: $($o.Name)"
        Remove-Item -Path $o.FullName -Force
    }
}
Write-Output "Done."
