@echo off
cd /d "%~dp0"

echo Installing / updating dependencies...
pip install -r requirements.txt
pip install pyinstaller

echo.
echo Building standalone executable...
pyinstaller mewgenics_manager.spec --noconfirm

echo.
if exist "dist\MewgenicsManager.exe" (
    echo Build succeeded!
    echo Executable: dist\MewgenicsManager.exe
) else (
    echo Build FAILED — check output above.
)
pause
