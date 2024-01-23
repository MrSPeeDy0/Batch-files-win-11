@echo off
title Joke Generator
color 0A

set /a "randomIndex=%random% %% 5 + 1"

echo.
echo Let's hear a joke...
echo.

if %randomIndex% equ 1 (
    echo Why don't scientists trust atoms?
    echo Because they make up everything!
) else if %randomIndex% equ 2 (
    echo Did you hear about the mathematician who's afraid of negative numbers?
    echo He'll stop at nothing to avoid them!
) else if %randomIndex% equ 3 (
    echo What do you call fake spaghetti?
    echo An impasta!
) else if %randomIndex% equ 4 (
    echo I told my wife she should embrace her mistakes.
    echo She gave me a hug!
) else (
    echo Why did the scarecrow win an award?
    echo Because he was outstanding in his field!
)

echo.
pause