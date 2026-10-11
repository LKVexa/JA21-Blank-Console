Option Explicit
Dim consoleShell, consoleFiles, consoleRoot, consoleCommand, consolePowerShell, consoleExit
Set consoleShell = CreateObject("WScript.Shell")
Set consoleFiles = CreateObject("Scripting.FileSystemObject")
consoleRoot = consoleFiles.GetParentFolderName(WScript.ScriptFullName)
consoleShell.CurrentDirectory = consoleRoot
consolePowerShell = consoleShell.ExpandEnvironmentStrings("%SystemRoot%") & "\System32\WindowsPowerShell\v1.0\powershell.exe"
If Not consoleFiles.FileExists(consolePowerShell) Then WScript.Quit 2
consoleCommand = Chr(34) & consolePowerShell & Chr(34) & " -NoLogo -NoProfile -STA -WindowStyle Hidden -ExecutionPolicy Bypass -File " & Chr(34) & consoleRoot & "\host\Start-Console.ps1" & Chr(34)
consoleExit = consoleShell.Run(consoleCommand, 0, True)
WScript.Quit consoleExit
