@echo off
@REM                // search the input from command line in youtube with no cmd layous

set "input=%*"
set "search=%input:~0%"
set "search=%search: =+%"
set link=https://www.youtube.com/results?search_query=%search%

if "%input%"=="" (
@REM                // check for empty input to open youtube
    start https://www.youtube.com/
) else if "%input%"=="h" (
@REM                // check for "h" input to open history
    start https://www.youtube.com/feed/history
) else (
    start %link%
)