@echo off
REM ============================================================
REM  NOEGUITO — Extractor de frames de referencia
REM  Uso: arrastra un video encima de este archivo
REM       o ejecuta: extraer_frames.bat "ruta\video.mp4"
REM ============================================================

SET FFMPEG="%LOCALAPPDATA%\Microsoft\WinGet\Packages\Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe\ffmpeg-8.1-full_build\bin\ffmpeg.exe"
SET VIDEO=%~1

IF "%VIDEO%"=="" (
    echo Arrastra un archivo de video encima de este .bat
    echo o ejecuta: extraer_frames.bat "ruta\al\video.mp4"
    pause
    exit /b
)

SET NOMBRE=%~n1
SET SALIDA=%~dp1frames_%NOMBRE%
mkdir "%SALIDA%" 2>nul

echo.
echo Extrayendo 1 frame por segundo de: %NOMBRE%
echo Destino: %SALIDA%
echo.

%FFMPEG% -i %VIDEO% -vf "fps=1" -q:v 1 "%SALIDA%\frame_%%03d.png"

echo.
echo Listo. Frames en: %SALIDA%
echo Abriendo carpeta...
explorer "%SALIDA%"
pause
