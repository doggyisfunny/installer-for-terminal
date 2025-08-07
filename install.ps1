Start-Process powershell -ArgumentList '-NoProfile -WindowStyle Hidden -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show(''Hi from HarrysTech!'',''Hello'')"'

exit
