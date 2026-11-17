@echo off
title Yerel Dokumantasyon Sunucusu
cd /d "%~dp0"
echo
echo  ███████████              █████    █████                         
echo ░░███░░░░░███            ░░███    ░░███                          
echo  ░███    ░███ █████ ████ ███████   ░███████    ██████  ████████  
echo  ░██████████ ░░███ ░███ ░░░███░    ░███░░███  ███░░███░░███░░███ 
echo  ░███░░░░░░   ░███ ░███   ░███     ░███ ░███ ░███ ░███ ░███ ░███ 
echo  ░███         ░███ ░███   ░███ ███ ░███ ░███ ░███ ░███ ░███ ░███ 
echo  █████        ░░███████   ░░█████  ████ █████░░██████  ████ █████
echo ░░░░░          ░░░░░███    ░░░░░  ░░░░ ░░░░░  ░░░░░░  ░░░░ ░░░░░ 
echo                ███ ░███                                          
echo               ░░██████                                           
echo                ░░░░░░                                            
echo  ██████████                                                      
echo ░░███░░░░███                                                     
echo  ░███   ░░███  ██████   ██████   █████                           
echo  ░███    ░███ ███░░███ ███░░███ ███░░                            
echo  ░███    ░███░███ ░███░███ ░░░ ░░█████                           
echo  ░███    ███ ░███ ░███░███  ███ ░░░░███                          
echo  ██████████  ░░██████ ░░██████  ██████                           
echo ░░░░░░░░░░    ░░░░░░   ░░░░░░  ░░░░░░             
echo
pause
:bsl
echo
echo ...
echo [Y] Evet
echo [n] Hayır
choice /c Yn /m "Python Docs başlatılsın mı? (Y/n)"
if errorlevel Y (
    echo Yerel sunucu baslatiliyor...
    start "" "http://localhost:8000/index.html"
py -m http.server 8000
goto bts
)
if errorlevel N (
    echo ...
    echo [y] Evet
    echo [N] Hayır
    choice /c yN /m "Kapatmak istediğinize emin misiniz? (y/N)"
    if errorlevel y (
        exit
    )
    if errorlevel N (
        goto bsl
    )
)
:bts
echo ...
echo Kapatmak istediğiniz zaman herhangi bir tuşa basmanız yeterlidir...
pause >nul