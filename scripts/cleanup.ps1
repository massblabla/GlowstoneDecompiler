# GlowstoneDecompiler
# Copyright (c) massblabla 2023
# Cleanup script

Write-Warning "Windows (PowerShell) port. I would not recommend using this as this could be broken and even unusable."

do {
    do {
        Write-Host "1) Yes"
        Write-Host "2) No"
        Write-Host ""
        Write-Host -nonewline "Type your choice and press Enter: "
        
        $choice = read-host
        
        Write-Host ""
        
        $ok = $choice -match '^[12]+$'
        
        if ( -not $ok) { Write-Host "Invalid selection" }
    } until ( $ok )
    
    switch -Regex ( $choice ) {
        "1"
        {
            Write-Output ""
            Write-Output "You chose Yes"
            Start-Sleep 2
            Set-Location ../src/minecraft
            Remove-Item -r net
            Remove-Item -r com
            Set-Location ../lib
            Remove-Item -r *
            Set-Location ../jars
            Set-Location libraries
            Remove-Item -r *
            Set-Location ../saves
            Move-Item 'GlowstoneDecompiler Testing World' ../'GlowstoneDecompiler Testing World'
            Remove-Item -r *
            Move-Item ../'GlowstoneDecompiler Testing World' 'GlowstoneDecompiler Testing World'
        }
        "2"
        {
            Write-Output ""
            Write-Output "You chose No"
            Start-Sleep 2
        }
    }
} until ( $choice -match "2" )