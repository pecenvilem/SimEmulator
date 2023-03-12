#!/bin/sh
export DISPLAY=:1
Xvfb $DISPLAY -screen 0 1920x1080x16 -ac &
fluxbox -display $DISPLAY &
x11vnc -nevershared -forever &
python main.py