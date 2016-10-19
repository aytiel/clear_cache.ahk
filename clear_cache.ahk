#Persistent
#SingleInstance force

filePath = %A_ScriptDir%\audio_cache\

SetTimer, clearCache, 1800000, On

clearCache:
  if WinExist("ahk_exe cmd.exe")
    FileDelete, %filePath%\*.*
  else
    ExitApp
return

;http://hastebin.com/uminiyojos.mel