@REM ~ Here enter the path to the folder that contains the apk ~
set apkPath=".\APK"

@REM ~ Here enter the name of the apk ~
set apkName="Newledge.apk"

@REM ~ Here enter the path inside the "configs" folder ~
set configsFolderPath=".\configs"

@REM ~ Here enter the path inside the "assets" folder ~
set assetsFolderPath=".\assets"



cd "C:\adb"
adb install "%apkPath%\%apkName%"
adb push "%configsFolderPath%" "/sdcard/Android/data/com.newledge.scenarios/files/configs"
adb push "%assetsFolderPath%" "/sdcard/Android/data/com.newledge.scenarios/files/assets"
pause