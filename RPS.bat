@echo off
title Rock, Paper, Scissors Game
color 0E

set /a "computerChoice=%random% %% 3"
set "playerChoice="

:choose
cls
echo.
echo Rock, Paper, Scissors - Choose your move:
echo 1) Rock
echo 2) Paper
echo 3) Scissors
set /p "choice="
if "%choice%"=="1" set "playerChoice=Rock"
if "%choice%"=="2" set "playerChoice=Paper"
if "%choice%"=="3" set "playerChoice=Scissors"

if not defined playerChoice (
    echo Invalid choice. Please enter 1, 2, or 3.
    timeout /nobreak /t 2 >nul
    goto choose
)

echo.
echo You chose: %playerChoice%

if %computerChoice% equ 0 (
    set "computerMove=Rock"
) else if %computerChoice% equ 1 (
    set "computerMove=Paper"
) else (
    set "computerMove=Scissors"
)

echo Computer chose: %computerMove%

if "%playerChoice%"=="%computerMove%" (
    echo It's a tie!
) else if "%playerChoice%"=="Rock" (
    if "%computerMove%"=="Scissors" (
        echo You win!
    ) else (
        echo Computer wins!
    )
) else if "%playerChoice%"=="Paper" (
    if "%computerMove%"=="Rock" (
        echo You win!
    ) else (
        echo Computer wins!
    )
) else if "%playerChoice%"=="Scissors" (
    if "%computerMove%"=="Paper" (
        echo You win!
    ) else (
        echo Computer wins!
    )
)

echo.
pause