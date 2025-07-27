@echo off
mode con: cols=30 lines=3
title SourceViewer

if "%~1"=="" (
    echo Drag n' drop a file onto this
    echo script to view it in notepad.
    timeout /t 5 > nul
    exit /b
)

if not exist "%~1" (
    echo File not found
    timeout /t 2 > nul
    exit /b
)

start notepad.exe "%~1"
exit