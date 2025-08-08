$wallpaperUrl = "https://raw.githubusercontent.com/doggyisfunny/wallpapers/main/harrystech.png"
$destination = "$env:USERPROFILE\Downloads\wallpaper.jpg"

Invoke-WebRequest -Uri $wallpaperUrl -OutFile $destination

Add-Type @"
using System.Runtime.InteropServices;
public class Wallpaper {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

[Wallpaper]::SystemParametersInfo(20, 0, $destination, 3)
