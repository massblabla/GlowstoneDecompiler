# GlowstoneDecompiler
# Copyright (c) massblabla 2023
# Eclipse Libraries Copy script

Write-Warning "Windows (PowerShell) port. I would not recommend using this as this could be broken and even unusable."

Set-Location ..\eclipse\Client

Remove-Item .classpath
Invoke-WebRequest https://gist.githubusercontent.com/massblabla/87b9f8e003828732fdfd55c5c211194f/raw/fae346b194a1147b5215a66c2aee9917abfdfa89/.classpath