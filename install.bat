xcopy /y .\compressXvid.bat %systemroot%\system32

reg add "HKEY_CLASSES_ROOT\*\shell\Menu1" /f /v "MUIVerb" /t REG_SZ /d "Compress Video"
reg add "HKEY_CLASSES_ROOT\*\shell\Menu1" /f /v "SubCommands" /t REG_SZ /d "NaNs;NaWs;WaWs;WaNs;SU;SD;"


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\NaNs" /f /ve /t REG_SZ /d "No audio or scaling"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\NaNs\command" /f /ve /t REG_SZ /d "compressXvid.bat \"%%1\" 1 0"


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\NaWs" /f /ve /t REG_SZ /d "No audio and half-size scaling"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\NaWs\command" /f /ve /t REG_SZ /d "compressXvid.bat \"%%1\" 1 1"

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WaNs" /f /ve /t REG_SZ /d "Only Compress"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WaNs\command" /f /ve /t REG_SZ /d "compressXvid.bat \"%%1\" 0 0"


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WaWs" /f /ve /t REG_SZ /d "half-size scaling"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WaWs\command" /f /ve /t REG_SZ /d "compressXvid.bat \"%%1\" 0 1"


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\SU" /f /ve /t REG_SZ /d "Speed up (2x)"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\SU\command" /f /ve /t REG_SZ /d "compressXvid.bat \"%%1\" 2"


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\SD" /f /ve /t REG_SZ /d "Slow Down (0.5x)"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\SD\command" /f /ve /t REG_SZ /d "compressXvid.bat \"%%1\" 3"