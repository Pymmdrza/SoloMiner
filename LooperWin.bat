@Echo off
title SoloMiner.py
Pushd "%~dp0"
:loop
python SoloMiner.py
goto loop
