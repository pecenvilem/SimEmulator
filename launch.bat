@echo on
echo Activating Python virtual environment...
cd venv\Scripts
call activate.bat
cd ..\..

echo Launching the SimEmulator...
python main.py

echo Cleaning up - deactivating virtual environment...
call deactivate

echo SimEmulator running sequence terminating...
PAUSE