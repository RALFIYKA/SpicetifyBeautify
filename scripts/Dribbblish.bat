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
@powershell rm $(spicetify -c)  >nul
echo y|spicetify restore backup >nul
spicetify apply >nul
@powershell -NoProfile -ExecutionPolicy Bypass -Command "cd $(spicetify -c | Split-Path); cd Themes\Dribbblish\; cp dribbblish.js ..\..\Extensions"  >nul
Copy-Item dribbblish.js ..\..\Extensions >nul
spicetify config extensions dribbblish.js >nul
spicetify config current_theme Dribbblish color_scheme base >nul
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 >nul
spicetify apply >nul