rem this is a dos batch file
call .\flaskenv\Scripts\activate.bat
echo starting flask app...
rem set FLASK_APP = tastytable
rem idk why --debug doesn't work, it does in flask 2.2.3
rem python -m flask --app tastytable run --debug
python -m flask --app tastytable run