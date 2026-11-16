@echo off
title Yerel Dokumantasyon Sunucusu
cd /d "%~dp0"

echo Yerel sunucu baslatiliyor...
echo Kapatmak icin bu pencereyi kapatabilir veya Ctrl+C tuslarina basabilirsiniz.
echo.

start "" "http://localhost:8000/index.html"
py -m http.server 8000