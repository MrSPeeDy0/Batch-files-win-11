@echo off
title Trivia Quiz
color 0D

set /a "score=0"

:question1
cls
echo.
echo Question 1:
echo What is the capital of France?
echo a) Madrid
echo b) Berlin
echo c) Paris
set /p "answer="
if /i "%answer%"=="c" (
    echo Correct!
    set /a "score+=1"
) else (
    echo Incorrect. The correct answer is c) Paris.
)
pause

:question2
cls
echo.
echo Question 2:
echo Which planet is known as the Red Planet?
echo a) Jupiter
echo b) Mars
echo c) Venus
set /p "answer="
if /i "%answer%"=="b" (
    echo Correct!
    set /a "score+=1"
) else (
    echo Incorrect. The correct answer is b) Mars.
)
pause

:question3
cls
echo.
echo Question 3:
echo Who wrote "Romeo and Juliet"?
echo a) Charles Dickens
echo b) William Shakespeare
echo c) Jane Austen
set /p "answer="
if /i "%answer%"=="b" (
    echo Correct!
    set /a "score+=1"
) else (
    echo Incorrect. The correct answer is b) William Shakespeare.
)
pause

cls
echo.
echo Quiz complete!
echo Your score: %score%/3

if %score% geq 2 (
    echo Well done! You know your stuff.
) else (
    echo Better luck next time. Keep learning!
)

echo.
pause