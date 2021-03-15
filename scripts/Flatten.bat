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
@powershell rm $(spicetify -c) >nul
spicetify backup aplly >nul
echo y|spicetify restore backup >nul
spicetify apply >nul
spicetify config current_theme Flatten >nul
spicetify apply >nul