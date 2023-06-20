# GlowstoneDecompiler
# Copyright (c) massblabla 2023
# JAR Download script

Write-Warning "Windows (PowerShell) port. I would not recommend using this as this could be broken and even unusable."

Set-Location ..\bin

# specialsource
Invoke-WebRequest https://repo1.maven.org/maven2/net/md-5/SpecialSource/1.10.0/SpecialSource-1.10.0.jar
Invoke-WebRequest https://repo1.maven.org/maven2/com/google/guava/guava/20.0/guava-20.0.jar
Invoke-WebRequest https://repo1.maven.org/maven2/net/sf/jopt-simple/jopt-simple/4.9/jopt-simple-4.9.jar
Invoke-WebRequest https://repo1.maven.org/maven2/org/ow2/asm/asm-commons/9.1/asm-commons-9.1.jar
Invoke-WebRequest https://repo1.maven.org/maven2/org/ow2/asm/asm/9.1/asm-9.1.jar
Invoke-WebRequest https://repo1.maven.org/maven2/org/ow2/asm/asm-tree/9.1/asm-tree-9.1.jar
Invoke-WebRequest https://repo1.maven.org/maven2/org/ow2/asm/asm-analysis/9.1/asm-analysis-9.1.jar

# cfr
Invoke-WebRequest https://repo1.maven.org/maven2/org/benf/cfr/0.152/cfr-0.152.jar