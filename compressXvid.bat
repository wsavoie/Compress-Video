
REM echo off
REM %1 is file
REM %2 is no audio if ==1
REM %3 is scale down if ==1
REM %2 ==2 if speed up by half
REM %2 ==3 if speed down by half



SET NAME=%1
SET NAMENOEXT=%~n1
SET EXT=%~x1
SET AUDIO=
SET SCALE=
SET SPEED=

if "%2"=="2" (
echo on
ffmpeg -i %NAME% -filter:v "setpts=0.5*PTS" -an %NAMENOEXT%OUT%EXT%
exit
)
if "%2"=="3" (
echo on
ffmpeg -i %NAME% -filter:v "setpts=2.0*PTS" -an %NAMENOEXT%OUT%EXT%
exit
)

if "%2"=="1" SET AUDIO=-an
if "%3"=="1" SET SCALE=-vf "scale=iw*.5:ih*.5"


echo on
ffmpeg -i %NAME% %AUDIO% -vcodec libx264 %SCALE% -crf 20 "%NAMENOEXT%OUT.avi"


