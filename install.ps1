Add-Type -AssemblyName PresentationFramework
$response = [System.Windows.MessageBox]::Show("Do you like HarrysTech?", "Important Question", "YesNo", "Question")

if ($response -eq "Yes") {
    Start-Process "https://www.tiktok.com/@harrystech_"
    Start-Process "https://www.youtube.com/channel/UCM7SkpbDqI8n3MPXAoiNP-g"
    Start-Process "https://www.instagram.com/harrystech_/"
} else {
    [System.Windows.MessageBox]::Show("Wrong answer. Shutting down in 10 seconds...", "Goodbye")
    Start-Sleep -Seconds 10
    Stop-Computer
}
