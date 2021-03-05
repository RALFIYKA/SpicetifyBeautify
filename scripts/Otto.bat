@echo OFF
color 0B 
mode con:cols=100 lines=15
echo.
echo.
echo.
@echo   ллллл    лллллл       ллллл       лл     лллллл   лллллл 
@echo  лл    лл  лл   лл    лл          лл  лл   лл   лл  лл   лл
@echo  ллл       лл   лл   лл          лл    лл  лл   лл  лл   лл
@echo   ллл      ллллл     лл          лллллллл  ллллл    ллллл
@echo    ллл     лл        лл          лл    лл  лл       лл
@echo       лл   лл         лл         лл    лл  лл       лл
@echo  ллллл     лл           ллллл    лл    лл  лл       лл
@echo.
@echo off
@powershell rm $(spicetify -c) >nul
echo y|spicetify restore backup >nul
spicetify apply >nul
spicetify config current_theme Otto >nul
spicetify apply >nul