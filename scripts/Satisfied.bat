@echo OFF
color 0B 
mode con:cols=49 lines=25
echo.
echo.
echo.
echo.                        
@echo                 .-:/++oooo++/:-.`                
@echo             .:+oooooooooooooooooo+:.             
@echo         `:oooooooooooooooooooooooooo/.          
@echo        `/oooooooooooooooooooooooooooooo+.        
@echo       :oooooooooooooooooooooooooooooooooo/       
@echo     `+oooooooooooooooooooooooooooooooooooo+`     
@echo    `+oooo+:--.``          ``.--:/+oooooooooo`    
@echo    /ooooo                          .-/oooooo+    
@echo   .oooooo/--:/++oooooooooo++/::-`      .ooooo-   
@echo   /oooooooooooo+++/////++ooooooooo+:-``-ooooo+   
@echo   oooooooo+-.`             `.-:/+ooooooooooooo   
@echo   oooooooo/```.-::::::::--.`     `.:+ooooooooo   
@echo   +ooooooooooooooooooooooooooo/:.`  `oooooooo+   
@echo   -ooooooooo+/::--.....--::/+ooooo+/+oooooooo:   
@echo    +ooooooo-  ``...----..`    .-/oooooooooooo    
@echo    `oooooooooooooooooooooooo/:.`  +ooooooooo.    
@echo     `ooooooooooooooooooooooooooo++ooooooooo.     
@echo      `/oooooooooooooooooooooooooooooooooo+`      
@echo        .+oooooooooooooooooooooooooooooo+-        
@echo         ./oooooooooooooooooooooooooo+-          
@echo            `-/oooooooooooooooooooo+-`            
@echo               .-:/+oooooooo+/:-.                                                            
@echo.
@echo off
@powershell rm $(spicetify -c) >nul
echo y|spicetify restore backup >nul
spicetify apply >nul
@powershell -NoProfile -ExecutionPolicy Bypass -Command "cd $(spicetify -c | Split-Path); cd Themes\DribbblishDynamic\; cp dribbblish-dynamic.js ..\..\Extensions"  >nul
spicetify config extensions dribbblish-dynamic.js >nul
spicetify config current_theme Satisfied color_scheme dark >nul
spicetify apply >nul