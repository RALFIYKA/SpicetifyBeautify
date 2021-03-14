@echo OFF
color 0B 
mode con:cols=100 lines=15
echo.
echo.
echo.
@echo   �����    ������       �����       ��     ������   ������ 
@echo  ��    ��  ��   ��    ��          ��  ��   ��   ��  ��   ��
@echo  ���       ��   ��   ��          ��    ��  ��   ��  ��   ��
@echo   ���      �����     ��          ��������  �����    �����
@echo    ���     ��        ��          ��    ��  ��       ��
@echo       ��   ��         ��         ��    ��  ��       ��
@echo  �����     ��           �����    ��    ��  ��       ��
@echo.
@echo off
spicetify backup apply 
@powershell rm $(spicetify -c) >nul
echo y|spicetify restore backup >nul
spicetify apply >nul
spicetify config current_theme Adapta-Nokto >nul
spicetify apply >nul