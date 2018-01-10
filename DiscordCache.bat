@echo off
title Discord Cache v2.2
color 05
cls
:start
cls
ECHO Discord Cache
ECHO.
Echo Made by Cash
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Delete Cache Folder
ECHO 2 - Convert Files and create folder
ECHO 3 - Open Info
ECHO 4 - EXIT
ECHO.

SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO DEL
IF %M%==2 GOTO CFCF
IF %M%==3 GOTO INFO
IF %M%==4 GOTO EXIT

:DEL
cd "%UserProfile%\AppData\Roaming\discord\Cache"
del *
cls
ECHO Discord Cache
ECHO.
ECHO Made by Cash
ECHO.
Echo Done! All files not in use deleted!
Echo.
SET /P M=Type 1 to go back to Menu:
IF %M%==1 GOTO start
Pause>NUL

:CFCF
cd "%UserProfile%\AppData\Roaming\discord\Cache"
ren * *.png
mkdir "%UserProfile%\desktop\DiscordCache"
xcopy %UserProfile%\AppData\Roaming\discord\Cache\*.* "%UserProfile%\desktop\DiscordCache" 
Echo Done!
Echo The Pictures Are Saved To The Desktop In A Folder Called "DiscordCache"
Echo I Hope You Enjoy!
Echo.
SET /P M=Type 1 to go back to Menu:
IF %M%==1 GOTO start
Pause>nul


:INFO
cls
ECHO Discord Cache
ECHO.
Echo Made by Cash
Echo.
Echo The discord cache folder holds all files downloaded by discord.
Echo.
Echo That would be Emotes, Profile Pictures, Photos sent by users, Server Icons ect.
Echo.
Echo Remember sending a file and removing it does NOT remove it forever... 
Echo.
Echo It Is stored in the Discord cache folder till Discord clears it.
Echo.
Echo I don't know when it clears it! but I THINK it clears it on restart (i'm too lazy to test it honestly) 
Echo. 
Echo Have a wonderful time using my little program here!.
Echo.
SET /P M=Type 1 to go back to Menu:
IF %M%==1 GOTO start
Pause>nul



:EXIT
exit
