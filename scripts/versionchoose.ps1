# GlowstoneDecompiler
# Copyright (c) massblabla 2023
# Version Choosing script

Write-Warning "Windows (PowerShell) port. I would not recommend using this as this could be broken and even unusable."

Set-Location ..\tmp

do {
    do {
        Write-Host "1) 19w36a"
        Write-Host "2) 1.20"
        Write-Host "3) 1.20.1"
        Write-Host "4) Exit"
        Write-Host ""
        Write-Host -nonewline "Type your choice and press Enter: "
        
        $choice = read-host
        
        Write-Host ""
        
        $ok = $choice -match '^[1234]+$'
        
        if ( -not $ok) { Write-Host "Invalid selection" }
    } until ( $ok )
    
    switch -Regex ( $choice ) {
        "1"
        {
            Write-Output ""
            Write-Output "You chose 19w36a"
            Start-Sleep 2
            # mapping
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/f483c4aa381c8f935d7a010751f12eb19851659f/client.txt
            # jar
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/54a359d0b47818d85c61db79ec742f7fdab5b914/client.jar
        }
        "2"
        {
            Write-Output ""
            Write-Output "You chose 1.20"
            Start-Sleep 2
            # mapping
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/a4cd9a97400f7ecfe4dba23e427549ebc5815d66/client.txt
            # jar
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/e575a48efda46cf88111ba05b624ef90c520eef1/client.jar
        }
        "3"
        {
            Write-Output ""
            Write-Output "You chose 1.20.1"
            Start-Sleep 2
            # mapping
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/6c48521eed01fe2e8ecdadbd5ae348415f3c47da/client.txt
            # jar
            Invoke-WebRequest https://piston-data.mojang.com/v1/objects/0c3ec587af28e5a785c0b4a7b8a30f9a8f78f838/client.jar
        }
        "4"
        {
            Write-Output ""
            Write-Output "You chose exit"
        }
    }
} until ( $choice -match "4" )