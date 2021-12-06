echo Activating Python virtual environment...
cd venv\Scripts
call activate.bat
cd ..\..

echo Launching the SimEmulator...
python main.py

echo Clening up - deactivating virtual environment...
call deactivate

echo Success!
PAUSE