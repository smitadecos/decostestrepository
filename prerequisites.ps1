Write-Output "Installing windows components"

Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation45 -All;
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LegacyScripts -All;
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication -All;
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationInit -All;
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-Server -All;
Get-WindowsFeature|where{$_.name -eq "Web-Scripting-Tools"}|Add-WindowsFeature