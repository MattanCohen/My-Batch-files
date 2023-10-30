@echo off
@REM                // search the input from command line in youtube with no cmd layous

set "input=%*"
if "%input%"=="" (
@REM                // check for empty input to open youtube
    start https://www.youtube.com/
) else if "%input%"=="h" (
@REM                // check for "h" input to open history
    start https://www.youtube.com/feed/history
) else (
@REM                // else search for input in youtube
    set "search=%input:~6%"
    set "search=%search: =+%"
    start https://www.youtube.com/results?search_query=%search%
)
