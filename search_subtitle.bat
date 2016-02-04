@echo off
cls

set "input=%1"
set "input=%input:~1,-1%"
set "file_ext=%input:~-4%"

if "%file_ext%"==".mkv" GOTO continue
if "%file_ext%"==".avi" GOTO continue
if "%file_ext%"==".ts" GOTO continue
if "%file_ext%"==".mov" GOTO continue
if "%file_ext%"==".mp4" GOTO continue
if "%file_ext%"==".m4v" GOTO continue
if "%file_ext%"==".wmv" GOTO continue
echo error: incorrect file type
pause
GOTO end

:continue
C:\tools\python2\Scripts\subliminal download -l en -s "%input%"

:end
