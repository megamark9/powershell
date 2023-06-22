$installedApps = Get-WMIObject -Class Win32_Product

if ($installedApps.Name -contains "EXACT APPLICATION NAME GOES HERE"){
	Write-Output "Already Installed"
	exit
	}
else{
	Write-Output "Not Installed, running installer"
	}


cd $env:temp | Invoke-Expression; Invoke-RestMethod -Method Get -URI ENTER_S3_URL -OutFile FILENAME | Invoke-Expression; ./FILENAME --quiet