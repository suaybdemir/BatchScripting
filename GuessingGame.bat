@echo off
color 1A
title Guessing Game
set /a guessnum=0
set /a answer = %RANDOM%
set variable_1 = surf33
echo -------------------------
echo Welcome
echo.
echo Guess it 
echo -------------------------
echo.
:top
echo.
set /p guess=
echo.
if %guess% GTR %answer% ECHO Lower!
if %guess% LSS %answer% ECHO Higher!
if %guess%==%answer% GOTO EQUAL
set /a guessnum = %guessnum% + 1
if %guess%==%variable_1% ECHO Found ? , the answer:%answer%
goto top
:equal
echo Right
echo.
echo It took you %guessnum% guesses.
echo.
pause.