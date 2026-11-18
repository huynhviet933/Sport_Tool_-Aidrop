@echo off
title VIET MMO - CRYPTO TOOL KIT
color 0A

:: Kiểm tra thư mục node_modules, nếu không có sẽ tự động cài đặt thư viện
if not exist node_modules (
    echo [!] Khong tim thay thu vien. Dang tien hanh cai dat...
    npm install ethers exceljs readline-sync cli-progress chalk@4.1.2 axios tweetnacl xlsx @mysten/sui.js https-proxy-agent aptos
    echo [OK] Da cai dat xong cac thu vien can thiet.
    cls
)

:run
echo ----------------------------------------------------
echo         KHOI CHAY VIET MMO CRYPTO TOOL KIT
echo ----------------------------------------------------
node v1.js

:: Nếu tool bị đóng hoặc lỗi, nhấn phím bất kỳ để chạy lại hoặc đóng cửa sổ
echo.
echo [!] Tool da dung lai.
pause
goto run