@echo off
REM essa .bat checa se a outra .bat de nome checaConecao.bat esta em execuçao e se nao estiver ele inicia ela
:loop
tasklist | find /i "cmd.exe" | find /i "checaConexao.bat" > nul
if %errorlevel% equ 1 (
    start "" /min cmd /c checaConexao.bat
)
timeout /t 5 > nul
goto loop
