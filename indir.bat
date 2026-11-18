@echo off
color 0F
powershell Write-Host "[ONEMLI]  Oncelikle programi yonetici olarak baslatin...  " -BackgroundColor Yellow -ForegroundColor Black
pause
net session >nul 2>&1
if %errorLevel% neq 0 (
    cls
    powershell Write-Host "Yonetici olarak baslatmadiginiz icin indirme betch i otomatik olarak 45 saniye icinde kendisi kapatilip acilacaktir." -BackgroundColor Red -ForegroundColor Black
    timeout /t 45
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
cd /d "%~dp0"
cls
color 0b
title Python_Docs
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
:bsl
pause
cls
color 0f
echo.
cls
title KURMAK_ICIN
echo Uygulama kurdugunuz yere kurulacaktir
echo Herhangi online aga bagli olmaniz gerekmektedir...
echo.
echo [Y] Evet
echo [n] Hayir ( kapatmak istiyorum )
choice /c Yn /n /m "Kurmak istiyor musunuz? [Y/n]  "
if errorlevel 2 (
    cls
    powershell Write-Host " [N] Hayir " -BackgroundColor DarkRed -ForegroundColor White
    powershell Write-Host " [y] Evet " -BackgroundColor Black -ForegroundColor Green
    choice /c Ny /n /m "Kapatmak istediginize emin misiniz? [N/y]  "
    echo Cik icin herhangi bir tusa basin...
    pause
)
if errorlevel 1 (

)