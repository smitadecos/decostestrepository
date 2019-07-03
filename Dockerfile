FROM mcr.microsoft.com/dotnet/framework/wcf:4.8
#FROM decospd.azurecr.io/decos/jzddevweb:2019.6.0.26

ADD prerequisites.ps1 .
RUN powershell .\prerequisites.ps1

ADD http://download.microsoft.com/download/D/D/E/DDE57C26-C62C-4C59-A1BB-31D58B36ADA2/rewrite_amd64_en-US.msi c:/inetpub/rewrite_amd64_en-US.msi
RUN powershell -Command Start-Process c:/inetpub/rewrite_amd64_en-US.msi -ArgumentList "/qn" -Wait