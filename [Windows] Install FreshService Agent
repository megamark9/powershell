$installedApps = Get-WMIObject -Class Win32_Product

if ($installedApps.Name -contains "Freshservice Discovery Agent"){
	Write-Output "Already Installed"
	exit
	}
else{
	Write-Output "Not Installed, running installer"
	}


cd $env:temp | Invoke-Expression; Invoke-RestMethod -Method Get -URI "ENTER_S3_URL" -OutFile fs-windows-agent-2.12.0.msi | Invoke-Expression; msiexec /i fs-windows-agent-2.12.0.msi