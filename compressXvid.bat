REM %1 is file
REM %2 is no audio if ==1
REM %3 is scale down if ==1

SET NAME=%1
SET AUDIO=
SET SCALE=
IF "%2"=="1" SET AUDIO=-an
IF "%3"=="1" SET SCALE=-vf "scale=iw*.5:ih*.5"

ffmpeg -i %NAME% %AUDIO% -vcodec libx264 %SCALE% -crf 20 %NAME:~0,-4%avi"


