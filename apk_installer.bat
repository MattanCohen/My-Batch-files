@REM ~ Here enter the path to the folder that contains the apk ~
set apkPath="C:\Users\matan\Desktop\Newledge\Unity\Projects\TheOffice\Builds\Android"

@REM ~ Here enter the name of the apk ~
set apkName="Newledge.apk"

@REM ~ Here enter the path inside the "configs" folder ~
set configsFolderPath="C:\Users\matan\Desktop\Newledge\Unity\Projects\TheOffice\Builds\Android\Neccessities\configs"

@REM ~ Here enter the path inside the "assets" folder ~
set assetsFolderPath="C:\Users\matan\Desktop\Newledge\Unity\Projects\TheOffice\Builds\Android\Neccessities\assets"



cd "C:\adb"
adb install "%apkPath%/%apkName%"
pause
adb push "%configsFolderPath%" "/sdcard/Android/data/com.newledge.scenarios/files/configs"
adb push "%assetsFolderPath%" "/sdcard/Android/data/com.newledge.scenarios/files/assets"
pause