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
if not exist "logs" mkdir "logs"
set "gK=github.com"
set "iL=logs/indl.log"
echo [ %date% %time% ] >> "%iL%"
echo _________OPENED_________ >> "%iL%"
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
pause
cls
color 0f
echo.
cls
title KURMAK_ICIN
echo Uygulama kurdugunuz yere kurulacaktir
echo Herhangi online aga bagli olmaniz gerekmektedir...
echo.
echo [ %time% ] Kurmak istiyor musunuz? (Y/n) , soruldu >> "%iL%"
:bsl
echo.
powershell Write-Host "[Y] Evet" -BackgroundColor DarkGreen -ForegroundColor White
powershell Write-Host "[n] Hayir ( kapatmak istiyorum )" -BackgroundColor Black -ForegroundColor Red
choice /c Yn /n /m "Kurmak istiyor musunuz? [Y/n]  "
if errorlevel 2 (
    echo [ %time% ] Hayir ( kapatmak istiyorum ) , secildi >> "%iL%"
    echo [ %time% ] Kapatmak istediginize emin misiniz? (N/y) , soruldu >> "%iL%"
    cls
    powershell Write-Host " [N] Hayir " -BackgroundColor DarkRed -ForegroundColor White
    powershell Write-Host " [y] Evet " -BackgroundColor Black -ForegroundColor Green
    choice /c Ny /n /m "Kapatmak istediginize emin misiniz? [N/y]  "
    if errorlevel 2 (
        echo [ %time% ] Evet , secildi >> "%iL%"
        cls
        echo [ %time% ] Cikmak icin herhangi bir tusa basin... , soruldu >> "%iL%"
        echo Cikmak icin herhangi bir tusa basin...
        pause
        echo [ %time% ] bts , donuldu >> "%iL%"
        goto bts
    )
    if errorlevel 1 (
        echo [ %time% ] Hayir , secildi >> "%iL%"
        cls
        echo [ %time% ] bsl , donuldu >> "%iL%"
        goto bsl
    )
)
if errorlevel 1 (
    echo [ %time% ] Evet , secildi >> "%iL%"
    echo [ %time% ] Indirmek istediginize emin misiniz? (Y/n) , soruldu >> "%iL%"
    powershell Write-Host " [Y] Evet " -BackgroundColor Green -ForegroundColor White
    powershell Write-Host " [n] Hayir " -BackgroundColor Black -ForegroundColor Red
    choice /c Yn /n /m "Indirmek istediginize emin misiniz? [Y/n]  "
    if errorlevel 2 (
        echo [ %time% ] Hayir , secildi >> "%iL%"
        cls
        echo [ %time% ] bsl , donuldu >> "%iL%"
        goto bsl
    )
    if errorlevel 1 (
        echo [ %time% ] Evet , secildi >> "%iL%"
        cls
        echo [ %date%  %time% ] github.com as gK adresine 2000 ms 20 paket , ping >> "%iL%"
        echo. >> "%iL%"
        echo -------- pingOpened -------- >> "%iL%"
        echo. >> "%iL%"
        ping %gK% -n 20 -w 2000 >> "%iL%"
        if errorlevel 1 (
            echo. >> "%iL%"
            echo -------- pingClosed -------- >> "%iL%"
            echo. >> "%iL%"
            echo [ %time% ] error on web else overtime for ping , ariza >> "%iL%"
            cls
            echo [ %time% ] ping bilgisi verildi , uyarildi >> "%iL%"
            powershell Write-Host "_Internet probleminizden dolayi indirme baslatilamadi_" -BackgroundColor DarkYellow -ForegroundColor White
            powershell Write-Host "Lutfen sorununuzu cozup oyle deneyin..." -BackgroundColor Black -ForegroundColor Yellow
            pause
            echo [ %time% ] bsl , donuldu
            goto bsl
        ) else (
            echo. >> "%iL%"
            echo -------- pingClosed -------- >> "%iL%"
            echo. >> "%iL%"
            echo [ %time% ] no error , ariza >> "%iL%"
            cls
            echo [ %time% ] ping bilgisi verildi , uyarildi >> "%iL%"
            echo Indirme baslatilmaya hazir...
            pause
            powershell Write-Host "_Indirme baslatiliyor_" -BackgroundColor DarkGray -ForegroundColor Yellow
            echo [ %date% %time% ] https://github.com/Blue0code/Python_docs adresini klonlama , git clone >> "%iL%"
            echo. >> "%iL%"
            echo -------- git_cloneOpened -------- >> "%iL%"
            echo. >> "%iL%"
            git clone "https://github.com/Blue0code/Python_docs" >> "%iL%"
            if errorlevel 1 (
                echo. >> "%iL%"
                echo -------- git_cloneClosed -------- >> "%iL%"
                echo. >> "%iL%"
                echo [ %time% ] error on cloning , ariza >> "%iL%"
                cls
                echo [ %time% ] git clone bilgisi verildi , uyarildi >> "%iL%"
                powershell Write-Host "_Belli olamayan bir problemden dolayi klonlama yapilamadi_" -BackgroundColor DarkYellow -ForegroundColor White
                powershell Write-Host "Tekrar deneyebilirsiniz..." -BackgroundColor Black -ForegroundColor Yellow
                pause
                echo [ %time% ] bsl , donuldu
                goto bsl
            ) else (
                echo. >> "%iL%"
                echo -------- git_cloneClosed -------- >> "%iL%"
                echo. >> "%iL%"
                echo [ %time% ] no error , ariza >> "%iL%"
                cls
                echo [ %time% ] git clone bilgisi verildi , uyarildi >> "%iL%"
                echo Basarili bir sekilde indirildi...
                cls
                echo Kapatabilirsiniz...
                pause
                goto bts
            )
        )
    )
) else (
    echo [ %time% ] komut istemi , acildi >> "%iL%"
    echo [ %time% ] hata bilgisi verildi , uyarildi >> "%iL%"
    start cmd /c "HATA" "powershell Write-Host ^" HATA GERCEKLESTIGI ICIN KAPATILDI ^" -BackgroundColor Red -ForegroundColor Black "
    echo [ %date% %time% ] _________HATA_________ >> "%iL%"
    exit
)
:bts
echo _________OPENED_________ >> "%iL%"
echo [ %date% %time% ] >> "%iL%"
exit