@echo off
cls
title Python_Docs
cd /d "%~dp0"
echo.
echo       :::::::::  :::   ::: ::::::::::: :::    :::  ::::::::  ::::    ::: 
echo      :+:    :+: :+:   :+:     :+:     :+:    :+: :+:    :+: :+:+:   :+:  
echo     +:+    +:+  +:+ +:+      +:+     +:+    +:+ +:+    +:+ :+:+:+  +:+   
echo    +#++:++#+    +#++:       +#+     +#++:++#++ +#+    +:+ +#+ +:+ +#+    
echo   +#+           +#+        +#+     +#+    +#+ +#+    +#+ +#+  +#+#+#     
echo  #+#           #+#        #+#     #+#    #+# #+#    #+# #+#   #+#+#      
echo ###           ###        ###     ###    ###  ########  ###    ####       
echo       :::::::::   ::::::::   ::::::::   ::::::::                         
echo      :+:    :+: :+:    :+: :+:    :+: :+:    :+:                         
echo     +:+    +:+ +:+    +:+ +:+        +:+                                 
echo    +#+    +:+ +#+    +:+ +#+        +#++:++#++                           
echo   +#+    +#+ +#+    +#+ +#+               +#+                            
echo  #+#    #+# #+#    #+# #+#    #+# #+#    #+#                             
echo #########   ########   ########   ########                                 
echo.
pause
:bsl
echo.
echo /.../
echo [Y] Evet
echo [n] Hayir
choice /c NY /n /m "Python Docs baslatilsin mi? [Y/n]"
if errorlevel 2 (
    cls
    start /min "DocumentaryServer" py -m http.server 8000
    timeout /t 1 >nul
    echo Baslatiliyor... [7]
    echo | | | |
    timeout /t 1 >nul
    cls
    echo Baslatiliyor... [6]
    echo / / / /
    timeout /t 1 >nul
    cls
    echo Baslatiliyor... [5]
    echo - - - -
    timeout /t 1 >nul
    cls
    echo Baslatiliyor... [4]
    echo \ \ \ \
    timeout /t 1 >nul
    cls
    echo Baslatiliyor... [3]
    echo | | | |
    timeout /t 1 >nul
    cls
    echo Baslatiliyor... [2]
    echo / / / /
    timeout /t 1 >nul
    cls
    echo Baslatiliyor... [1]
    echo - - - -
    timeout /t 1 >nul
    cls
    echo Baslatiliyor... [0]
    echo \ \ \ \
    start "PythonDocs" "http://localhost:8000/index.html"
goto bts
)
if errorlevel 1 (
    cls
    echo /.../
    echo [y] Evet
    echo [N] Hayir
    choice /c NY /n /m "Kapatmak istediginize emin misiniz? [y/N]"
    if errorlevel 2 (
        cls
        exit
    )
    if errorlevel 1 (
        cls
        goto bsl
    )
)
:bts
cls
echo /.../
echo Sunucuyu kapatmak istediginiz zaman herhangi bir tusa basmaniz yeterlidir...
powershell -Command "$chars='|/-\'; $i=0; while(-not [Console]::KeyAvailable) { [Console]::Write(\"`r Calisiyor... \" + $chars[$i++ % $chars.Length]); Start-Sleep -Milliseconds 100 }; $null = [Console]::ReadKey($true)"
taskkill /f /fi "windowtitle eq DocumentaryServer" /t >nul 2>&1
goto bsl