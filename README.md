# arquivo-bat-que-checa-se-outra-bat-esta-funcionando
```
@echo off
:loop
tasklist | find /i "cmd.exe" | find /i "checaConexao.bat" > nul
if %errorlevel% equ 1 (
    start "" /min cmd /c checaConexao.bat
)
timeout /t 5 > nul
goto loop

```
