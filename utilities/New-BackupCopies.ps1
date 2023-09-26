<#
.SYNOPSIS

Create timestamped backups of files.

.DESCRIPTION

This is a PowerShell module. The easiest way to get started is to copy this script into the folder
of files you want to backup.

Next, import it from a PowerShell prompt by Shift + Right-Clicking in the same folder as this script 
and choosing "Open in Terminal" or "Open PowerShell window here". Once the terminal opens type:
Import-Module .\New-BackupCopies.ps1

To run the function you just imported, for instance on all PDF files in the same folder, type:
New-BackupCopies -Extension pdf

This will create timestamped backups of all files based on extension in the current directory,
and put them into a folder named "Backups" (the timestamp is appended to the file name). 
The timestamp in the file name means multiple, unique backups are created. This prevents you 
from backing up a corrupted file and overwriting a single backup copy.

This consumes more local disk space. When the backups are no longer needed, simply delete 
unnecessary files.

.PARAMETER Extension

Specifies the extension of the file(s) you want to backup.

.EXAMPLE

PS> Import-Module .\New-BackupCopies.ps1

.EXAMPLE

PS> New-BackupCopies -Extension "pdf"

.LINK

https://brandon-hamilton.github.io/creative-resources/record-keeping/
https://www.cisa.gov/sites/default/files/publications/data_backup_options.pdf

#>

function New-BackupCopies {

	# Takes the argument of "extension" as in a file extension, for example mp4, png, or pdf
	[CmdletBinding()]
	Param(
		[Parameter(Position = 0, Mandatory = $True)]
		[string]$Extension
	)

	# Checks if you specified an extension as an argument
	if ("$Extension" -ne "") {

		# Searches the current directory for any files with the matching extension
		if(!(gci .\*.$Extension)) {
			Write-Host -ForegroundColor Yellow "No .$Extension files found."
			return
		}

		# Checks if there's a folder called "Backups" in the current directory, creates it if it doesn't exist
		if(!(Test-Path .\Backups)) {
			New-Item -Path .\Backups -Type Directory | Out-Null
    		Write-Host -ForegroundColor Green "Creating Backups folder..."
		}

		# Get all files based on extension in the directory this script is executed from, copy them to the Backups folder
		foreach ($file in Get-ChildItem -Filter ".\*.$Extension") { 
			Copy-Item -Path $file -Destination .\Backups
			Write-Host -ForegroundColor Green "Backing up $file..."
		}

		# The current date and time of execution
		$datetime = Get-Date -Format yyyyMMdd_HHmmss

		# Append the date and timestamp to the backup file names that don't have it yet
		Get-ChildItem .\Backups\ | where { $_.Name -NotMatch "(\d){8}_(\d){6}.$Extension" } | Rename-Item -NewName {$_.name -replace ".$Extension","_$datetime.$Extension" }
	}
}
