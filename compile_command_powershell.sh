#!/bin/bash

pyinstaller --noconfirm --onedir --windowed --add-data "d:/git_repositories/sc2senseiclient/.venv/lib/site-packages/customtkinter;customtkinter/" main.py 
xcopy .\img\ .\dist\main\img\
xcopy .\bin\ .\dist\main\bin\

$SHELL 