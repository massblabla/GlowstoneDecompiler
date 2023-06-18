# GlowstoneDecompiler
# Copyright (c) massblabla 2023
# Decompile script
# PowerShell port (Windows), I don't recommend using this as this could still be broken and unusable

Write-Output "If it fails, please check your Java installation. Or you don't have Minecraft."
Start-Sleep 5

# copy libs
Write-Output "Now it'll copy the needed libraries for Minecraft to work."
Write-Output "This can take long, depending on your computer."
Set-Location ..\jars
Copy-Item -r $env:AppData\.minecraft\libraries\* .
Set-Location ..\scripts
.\misc\eclipsecp
Start-Sleep 2

# dec/deo process
Set-Location ..\bin 

Write-Output "Now it'll start deobfuscation."
Write-Output "Please be patient, because it'll take long (like hours)."
java.exe -Xms512M -Xmx4096M -cp "SpecialSource-1.10.0.jar;*;." net.md_5.specialsource.SpecialSource --in-jar ..\tmp\client.jar --out-jar ..\tmp\deobf.jar --srg-in ..\tmp\client.txt --kill-lvt
Start-Sleep 2

Write-Output "Now it'll start decompilation."
java.exe -Xms512M -Xmx4096M -jar cfr-0.152.jar ..\tmp\deobf.jar --outputdir ..\src\minecraft
Start-Sleep 2

Write-Output "Removing unnecessary temporary files."
Set-Location ..\tmp
Copy-Item client.jar ..\jars\versions\client\client.jar
Remove-Item -r *
Set-Location ..\src
Remove-Item summary.txt