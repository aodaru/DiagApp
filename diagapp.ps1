Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object RegisteredUser,NumberOfUsers,BuildNumber,Version
Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" | Select-Object DeviceID, @{n="Size";e={$_.Size /1GB}}, @{n="FreeSpace";e={$_.FreeSpace /1GB}}
Get-ComputerInfo | Select-Object WindowsProductName, WindowsVersion, OsHardwareAbstractionLayer
Repair-Volume -DriveLetter C -scan
Optimize-Volume -DriveLetter C -Analyze -Verbose
Pause