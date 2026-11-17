@echo off
title Yerel Dokumantasyon Sunucusu
cd /d "%~dp0"
echo 
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
echo
pause
:bsl
echo
echo ...
echo [Y] Evet
echo [n] Hayır
choice /c NY /n /m "Python Docs baslatilsin mi? [Y/n]"
if errorlevel 2 (
    echo Baslatiliyor...
    start "" "http://localhost:8000/index.html"
py -m http.server 8000
goto bts
)
if errorlevel 1 (
    echo ...
    echo [y] Evet
    echo [N] Hayir
    choice /c NY /n /m "Kapatmak istediginize emin misiniz? [y/N]"
    if errorlevel 2 (
        exit
    )
    if errorlevel 1 (
        goto bsl
    )
)
:bts
echo ...
echo Kapatmak istediginiz zaman herhangi bir tusa basmaniz yeterlidir...
pause >nul