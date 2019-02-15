@echo off
title Discord Cache v2.4
color 05
cls
:start
cls
ECHO Discord Cache
ECHO.
Echo Made by Cash
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2, 3 or 4 to select your task, or 5 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Delete Cache Folder
ECHO 2 - Convert Files and create folder
ECHO 3 - Open Info
ECHO 4 - AutoDelete
ECHO 5 - EXIT
ECHO.

SET /P M=Type 1, 2, 3, 4 or 5 then press ENTER:
IF %M%==1 GOTO DEL
IF %M%==2 GOTO CFCF
IF %M%==3 GOTO INFO
IF %M%==4 GOTO AutoDelete
IF %M%==5 GOTO EXIT

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

:AutoDelete
CLS
ECHO.
Echo Do you have the Delete Bat?
ECHO.
SET /P M=Type 1 if you have it 2 if you do not or 3 to go back to the main menu. then press ENTER:
IF %M%==1 GOTO YES
IF %M%==2 GOTO NO
PAUSE
IF %M%==3 GOTO star

:NO
start iexplore.exe "https://t0x1csaint.github.io/Delete.bat"
Echo Move Delete.bat to the same folder as Discord Cache Grabber.bat!
SET /P M=Type 1 When you've done that:
IF %M%==1 GOTO AutoDelete

:YES
copy "Delete.bat" "C:\Users\Derek\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
Echo.
Echo If you get the Error "The system cannot find the file specified." 
Echo.
ECHO You didn't move the file "Delete.bat" to the proper folder if you didn't you're all set! 
Echo. 
Echo It'll now run on startup.
Echo.
SET /P M=Type 1 to go back to Menu:
IF %M%==1 GOTO start


:EXIT
exit
