$dir='src\main\resources\archivos'
$files = Get-ChildItem $dir -File -Filter '*.png' | Where-Object { $_.Name -notlike '*.opt.*' }
$totBefore=0; $totAfter=0
foreach ($f in $files) {
    $opt = Join-Path $dir ($f.BaseName + '.opt.png')
    if (Test-Path $opt) {
        $b=(Get-Item $f.FullName).Length
        $a=(Get-Item $opt).Length
        $totBefore += $b; $totAfter += $a
        Write-Output ($f.Name + ' => ' + [math]::Round($b/1024,1) + ' KB -> ' + [math]::Round($a/1024,1) + ' KB')
    }
}
if ($totBefore -gt 0) {
    Write-Output ('TOTAL: ' + [math]::Round($totBefore/1024,1) + ' KB -> ' + [math]::Round($totAfter/1024,1) + ' KB (saved ' + [math]::Round((($totBefore-$totAfter)/$totBefore*100),2) + '%)')
} else {
    Write-Output 'No matching opt files found.'
}