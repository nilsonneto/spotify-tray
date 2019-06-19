#!/bin/bash
spotify &
SP_PID=$!
sleep 15s
kdocker -d 10 -i ~/snap/spotify/common/spotify.png -q -m -n Spotify &
KD_PID=$!
disown $SP_PID
disown $KD_PID
