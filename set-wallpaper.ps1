try {
    # Set image URL and download path
    $wallpaperUrl = "https://raw.githubusercontent.com/doggyisfunny/installer-for-terminal/main/greece.png"
    $destination = "$env:USERPROFILE\Downloads\wallpaper.jpg"

    # Download the image
    Invoke-WebRequest -Uri $wallpaperUrl -OutFile $destination

    # Add wallpaper-setting class
    Add-Type @"
    using System.Runtime.InteropServices;
    public class Wallpaper {
        [DllImport("user32.dll", SetLastError = true)]
        public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
    }
"@

    # Apply the wallpaper
    [Wallpaper]::SystemParametersInfo(20, 0, $destination, 3)

    Write-Host "✅ Wallpaper set successfully."
} catch {
    Write-Host "❌ Error: $($_.Exception.Message)"
}
