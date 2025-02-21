#Powershell script extracting log from event viewer.
$EventIDs = @(3099, 3085, 3102, 3105, 3096, 3101, 3108, 3089, 3076)
$LogName = "Microsoft-Windows-CodeIntegrity/Operational"
$OutputFile = "C:\CodeIntegrityLogs.csv"
$outputfilexml = "C:\CodeIntegrityLogsxml.csv"
$outfilexml = "C\CodeIntegrityLogsxml.csv"
# Get event details maximun 100 
$Events = Get-WinEvent -LogName $LogName -Maxevent 100 | Where-Object { $_.Id -in $EventIDs }

# Process and export events
$Events | ForEach-Object {
    [PSCustomObject]@{
        TimeCreated      = $_.TimeCreated
        EventID         = $_.Id
        ProviderName    = $_.ProviderName
        Level           = $_.LevelDisplayName
        Message         = $_.Message
        XMLView         = $_.ToXml()
    }
} | Export-Csv -Path $OutputFilexml -NoTypeInformation
$Events | ForEach-Object {
    [PSCustomObject]@{
        TimeCreated      = $_.TimeCreated
        EventID         = $_.Id
        ProviderName    = $_.ProviderName
        Level           = $_.LevelDisplayName
        Message         = $_.Message
        XMLView         = $_.ToXml()
    }
}

# Save to CSV
$Events | Select-Object TimeCreated, Id, ProviderName, LevelDisplayName, Message | Out-File -Encoding utf8 $OutputFile
 Export-Csv -Path "C:\CodeIntegrityLogs.csv" -NoTypeInformation

Write-Output "Events saved to $OutputFile"
Write-Output "Events saved to $outputfilexml"
