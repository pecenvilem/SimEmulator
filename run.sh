#!/bin/sh
Xvfb :1 -screen 0 1920x1080x16 &
export DISPLAY=:1
fluxbox -display $DISPLAY &
x11vnc &
python main.py