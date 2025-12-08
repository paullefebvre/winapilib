# WinAPILib
WinAPI Declare Library for use with Xojo.

## About ##
WinAPILib is a library of WinAPI (formally Win32) Declares you can add to your Xojo projects to add Windows-specific functionality.

This project is intended to be both 32-bit and 64-bit compatible and will likely crib many of its Declares from the older (and 32-bit only) Windows Functionality Suite Xojo library (WFS - https://github.com/arbp/WFS).

## Usage ##
Click the green "Clone or download" button to download a Zip of the project. You can run the WinAPILib project in Xojo on Windows to see a demonstration of some of its features.

To use it in your own projects, open the WinLibAPI project and copy the WinAPILib folder to your project. Currently all code resides in the WinAPILib namespace.

If you are using Xojo 2025 Release 3 or later you can instead download the xojo_library file and use that instead of the source code.

WinAPILib works with recent versions of Xojo.

Set a Window to 50% opacity:

    WinAPILib.Window.SetOpacity(Self, 0.50)
    
Make a Window always topmost:

    WinAPILib.Window.AlwaysTopmost(Self) = True
    
Get the Windows version:

    Var versionInfo As New WinAPILib.OSVersionInfo
    MessageBox(versionInfo.Version)
    
There is more of course and additional things will be added over time. For now you'll have to read through the WinAPILib namespace to see what is available.

If you have WinAPI Declares to add, please submit Pull requests.