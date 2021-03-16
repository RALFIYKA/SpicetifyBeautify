@echo OFF
color 0B 
mode con:cols=49 lines=25
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
@powershell rm $(spicetify -c)  >nul
echo y|spicetify restore backup >nul
spicetify apply >nul
@powershell -NoProfile -ExecutionPolicy Bypass -Command "cd $(spicetify -c | Split-Path); cd Themes\Dribbblish\; cp dribbblish.js ..\..\Extensions"  >nul
Copy-Item dribbblish.js ..\..\Extensions >nul
spicetify config extensions dribbblish.js >nul
spicetify config current_theme Dribbblish color_scheme base >nul
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 >nul
spicetify apply >nul