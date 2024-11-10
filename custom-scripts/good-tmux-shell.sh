#!/bin/bash

xdotool key --clearmodifiers ctrl+shift+minus
xdotool key --clearmodifiers ctrl+shift+minus

# Start a new tmux session named 'main'
tmux new-session -d -s main 

# Split the window horizontally
tmux split-window -h 

# Select the left pane and split it vertically
tmux select-pane -L
tmux split-window -v 
# Select the upper left pane (pane 0.0) and split it horizontally
tmux select-pane -U
tmux split-window -h

# Send the command to the upper left pane (pane 0.0)
tmux send-keys -t main:0.0 'neofetch --ascii /home/x-ae-x/.config/neofetch/ass.txt' C-m
tmux select-pane -D
tmux send-keys -t main:0.2 'ranger' C-m
# Send the command to the lower left pane (pane 0.1)

# Attach to the tmux session
tmux attach -t main

xdotool key -clearmodifiers ctrl+s
xdotool key -clearmodifiers Right 

