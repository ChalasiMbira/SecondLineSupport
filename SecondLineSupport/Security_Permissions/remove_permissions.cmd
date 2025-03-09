@echo off
:: Remove user permissions from a folder
icacls C:\RestrictedFolder /remove "DOMAIN\username"
pause
