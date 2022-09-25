@echo on
IF exist venv (ren venv venv_old && echo Found existing 'venv' folder. Renamed to 'venv_old')
echo Creating Python virtual environment for the project...
python -m venv venv

echo Activating virtual environment...
cd venv\Scripts
call activate.bat
cd ..\..

echo Installing required Python packages... This step may take a while...
pip install -r requirements.txt

echo Deactivating virtual environment...
call deactivate

echo Installation successful! Proceed by filling defined credentials in the 'secrets_template.py' file.
echo Then rename the file to just 'secrets.py'.
echo You can run the SimEmulator via 'launch.bat' file. See 'configuratin.py' for possible settings.
echo You can remove the program completely by deleting the root folder. (Where this .bat file is located...)
PAUSE
