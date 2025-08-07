Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show('Hi from HarrysTech!', 'Hello')

Start-Sleep -Seconds 2

# Close the PowerShell window
$host.ui.RawUI.FlushInputBuffer()
exit
