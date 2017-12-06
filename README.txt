# Compress-Video
This program creates a context menu option in windows 7 when right clicking on video files. It reencodes videos with certain options like standard compression, scale down, change speed. The compression codec is xvid and uses quality factor with constant rate factor (crf) of 20.

## Getting Started
First clone/download the repository into a folder on your machine (it doesn't matter where). This software requires ffmpeg to be installed and defined in the environment path on your pc. 

### Installing

Start by downloading ffmpeg from link below:
```https://www.ffmpeg.org/download.html```

Then, add the folder (bin) containing ffmpeg.exe to your environment path.

## How To Use
After completing the instruction in the Installing section, navigate to the folder where you downloaded the project to. Run install.bat to get everything working. After running install.bat, anytime you right click on a video, a "Compress Video" option will show up in the context menu. Hovering over this menu item will show some additional options detailing certain operations you can perform to the file.

## Note
For some reason you must speed up or slow down BEFORE compressing, it degrades video quality otherwise as play time goes by if you change the speed after compressing.

## Deprecated code
I've kept deprecated registry files I used originally for future reference for myself, but they are unnecessary for the ordinary user. (These files are found in "old style install using only reg files")

## Uninstall
To uninstall the software, navigate to the project directory and run uninstall.bat. This will remove the compressXvid.bat from your system directory, and will also remove the registry files added. Afterwards the context menu items will be deleted from your system and you can safely delete the project from your system completely.