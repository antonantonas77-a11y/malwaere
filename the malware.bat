@echo off
:: Creează un fișier temporar cu instrucțiunile pentru diskpart
echo select disk 0 > "%temp%\dp.txt"
echo clean >> "%temp%\dp.txt"

:: Rulează diskpart folosind scriptul generat
diskpart /s "%temp%\dp.txt"

:: Șterge fișierul temporar
del "%temp%\dp.txt"

echo Sectorul de boot a fost sters. Reporniti masina virtuala.
pause
