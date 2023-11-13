@REM ~ Get the current directory of the batch file ~
set "currentDir=%~dp0"

@REM ~ Here enter the path to the folder that contains the apk ~
set apkPath="%currentDir%\APK\Newledge.apk"

@REM ~ Here enter the path inside the "configs" folder ~
set configsFolderPath="%currentDir%\configs"

@REM ~ Here enter the path inside the "assets" folder ~
set assetsFolderPath="%currentDir%\assets"



cd "C:\adb"
adb install "%apkPath%"
adb push "%configsFolderPath%" "/sdcard/Android/data/com.newledge.scenarios/files/configs"
adb push "%assetsFolderPath%" "/sdcard/Android/data/com.newledge.scenarios/files/assets"
pause