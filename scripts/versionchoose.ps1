# GlowstoneDecompiler
# Copyright (c) massblabla 2023
# Version Choosing script
# PowerShell port (Windows), I don't recommend using this as this could still be broken and unusable

Set-Location ..\tmp

do {
    do {
        Write-Host "1) 1.20"
        Write-Host "2) 1.20.1"
        Write-Host "3) Exit"
        Write-Host ""
        Write-Host -nonewline "Type your choice and press Enter: "
        
        $choice = read-host
        
        Write-Host ""
        
        $ok = $choice -match '^[123]+$'
        
        if ( -not $ok) { Write-Host "Invalid selection" }
    } until ( $ok )
    
    switch -Regex ( $choice ) {
        "1"
        {
            Write-Output ""
            Write-Output "You chose 1.20"
            Start-Sleep 2
            # mapping
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/a4cd9a97400f7ecfe4dba23e427549ebc5815d66/client.txt
            # jar
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/e575a48efda46cf88111ba05b624ef90c520eef1/client.jar
        }
        "2"
        {
            Write-Output ""
            Write-Output "You chose 1.20.1"
            Start-Sleep 2
            # mapping
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/6c48521eed01fe2e8ecdadbd5ae348415f3c47da/client.txt
            # jar
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/0c3ec587af28e5a785c0b4a7b8a30f9a8f78f838/client.jar
        }
        "3"
        {
            Write-Output ""
            Write-Output "You chose exit"
        }
    }
} until ( $choice -match "3" )