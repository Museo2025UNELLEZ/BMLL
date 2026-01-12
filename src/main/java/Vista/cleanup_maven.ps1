<#
.SYNOPSIS
  Limpia metadatos corruptos del repositorio Maven local (~\.m2\repository) y vuelve a ejecutar mvn clean install.

.DESCRIPTION
  - Por defecto respalda y elimina el fichero maven-metadata-local.xml dentro de
    $HOME\.m2\repository\<groupId path>\<artifactId>\.
  - Opcionalmente (con -RemoveDir) mueve todo el directorio del artefacto a un backup.
  - Al final ejecuta `mvn clean install` en la ruta de proyecto indicada.

.PARAMETER ArtifactGroup
  Grupo del artefacto (por defecto 'com.Museodelosllanos').

.PARAMETER ArtifactId
  Id del artefacto (por defecto 'BMLL').

.PARAMETER M2Repo
  Ruta del repo Maven (por defecto $env:USERPROFILE\.m2\repository).

.PARAMETER ProjectPath
  Ruta al directorio raíz del proyecto donde ejecutar mvn (por defecto '.')

.PARAMETER RemoveDir
  Si se especifica, mueve todo el directorio del artefacto a un backup en lugar de borrar solo el metadata file.

.PARAMETER AutoYes
  Omite la confirmación interactiva (útil para scripts).

.PARAMETER Debug
  Pasa -X a mvn para ejecución con debugging.

.EXAMPLE
  .\cleanup_maven.ps1 -ProjectPath 'C:\Users\Admin\Documents\NetBeansProjects\BMLL'
#>

param(
    [string]$ArtifactGroup = "com.Museodelosllanos",
    [string]$ArtifactId = "BMLL",
    [string]$M2Repo = "$env:USERPROFILE\.m2\repository",
    [string]$ProjectPath = ".",
    [switch]$RemoveDir,
    [switch]$AutoYes,
    [switch]$Debug
)

function Confirm-OrExit($message) {
    if ($AutoYes) { return $true }
    $r = Read-Host "$message [y/N]"
    if ($r -match '^[Yy]') { return $true } else { return $false }
}

try {
    Write-Host "Maven repo: $M2Repo"
    $groupPath = $ArtifactGroup -replace '\.', '\'
    $artifactPath = Join-Path -Path $M2Repo -ChildPath (Join-Path $groupPath $ArtifactId)

    if (-not (Test-Path $artifactPath)) {
        Write-Warning "No se encontró el directorio del artefacto: $artifactPath"
    } else {
        Write-Host "Directorio del artefacto: $artifactPath"
        Get-ChildItem -Path $artifactPath | ForEach-Object { Write-Host "  - $($_.Name) ($($_.Length) bytes)" }

        $timestamp = (Get-Date).ToString('yyyyMMdd_HHmmss')
        if ($RemoveDir) {
            $backupDir = "$artifactPath.backup_$timestamp"
            $do = Confirm-OrExit "Mover todo el directorio del artefacto a: $backupDir ?"
            if ($do) {
                Write-Host "Moviendo $artifactPath -> $backupDir ..."
                Move-Item -Path $artifactPath -Destination $backupDir -Force
                Write-Host "Directorio movido."
            } else {
                Write-Host "Operación cancelada por el usuario."
            }
        } else {
            $meta = Join-Path $artifactPath "maven-metadata-local.xml"
            if (Test-Path $meta) {
                Write-Host "Archivo metadata encontrado: $meta"
                $backupMeta = Join-Path $artifactPath ("maven-metadata-local.xml.bak_" + $timestamp)
                $do = Confirm-OrExit "Respaldar y eliminar el fichero metadata (respaldará como $backupMeta) ?"
                if ($do) {
                    Copy-Item -Path $meta -Destination $backupMeta -Force
                    Write-Host "Backup creado: $backupMeta"
                    Remove-Item -Path $meta -Force
                    Write-Host "Archivo metadata eliminado: $meta"
                } else {
                    Write-Host "Operación cancelada por el usuario."
                }
            } else {
                Write-Host "No se encontró maven-metadata-local.xml en $artifactPath"
            }
        }
    }

    # Run maven build
    $fullProjectPath = Resolve-Path -Path $ProjectPath
    Write-Host "`nEjecutando mvn clean install en: $fullProjectPath`n"
    Push-Location $fullProjectPath

    $mvnArgs = @("clean","install")
    if ($Debug) { $mvnArgs += "-X" } else { $mvnArgs += "-e" }

    # Try to run mvn; if mvn isn't on PATH, the error will indicate it.
    $mvn = "mvn"
    $exitCode = & $mvn @mvnArgs
    $lastExit = $LASTEXITCODE

    Pop-Location

    if ($lastExit -eq 0) {
        Write-Host "`nMaven build finished successfully (exit code 0)."
    } else {
        Write-Warning "`nMaven build finished with exit code $lastExit. Check the output above for details."
    }

} catch {
    Write-Error "Ocurrió un error: $_"
}