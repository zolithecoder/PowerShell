@ECHO OFF
SETLOCAL enableextensions

:: Kiírja a kezdő üzenetet a konzolba
echo Lekerdezem a lemez informaciokat...

:: Lekérdezi a lemezek információit és elmenti a fájlba
(for /f "tokens=1-3" %%a in ('
  WMIC LOGICALDISK GET FreeSpace^,Name^,Size ^|FINDSTR /I /V "Name"
  ') do (
    echo wsh.echo "%%b" ^& " free=" ^& FormatNumber^(cdbl^(%%a^)/1024/1024/1024, 2^)^& " GB"^& " size=" ^& FormatNumber^(cdbl^(%%c^)/1024/1024/1024, 2^)^& " GB" > "%temp%\tmp.vbs"
    if not "%%c"=="" (
      echo(
      cscript //nologo "%temp%\tmp.vbs"
      del "%temp%\tmp.vbs"
    )
  )
) > C:\Users\Mran\Documents\disk_info.txt

:: Kiírja a disk_info.txt tartalmát a CMD-be
echo A lemez informaciok:
type C:\Users\...\Documents\disk_info.txt

:: Vár 5 másodpercet, majd bezárja az ablakot
timeout /t 5 /nobreak >nul
exit
