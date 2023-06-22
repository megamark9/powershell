$installedApps = Get-WMIObject -Class Win32_Product

if ($installedApps.Name -contains "Sophos Endpoint Agent"){
	Write-Output "Already Installed"
	exit
	}
else{
	Write-Output "Not Installed, running installer"
	}


cd $env:temp | Invoke-Expression; Invoke-RestMethod -Method Get -URI https://mdm-apps-public.s3.us-west-2.amazonaws.com/Sophos/SophosSetup.exe -OutFile SophosSetup.exe | Invoke-Expression; ./SophosSetup.exe --quiet