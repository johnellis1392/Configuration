#!/bin/bash

# Notes on using tmux's cli api.
# Links for additional references:
# * Tmux Cheat Sheet - https://gist.github.com/MohamedAlaa/2961058


# ############################################## #
# CLI Commands                                   #

# Start new session
tmux

# Start new session with given name:
tmux new -s session_name

# List running tmux sessions
tmux ls

# Attach to a session (defaults to first session)
tmux a
tmux at
tmux attach

# Attach to named session
tmux a -t session_name
tmux at -t session_name
tmux attach -t session_name

# Kill session
tmux kill-session -t session_name


# Attach to a running session
tmux attach-session \
  -t session_name \
  -c start_directory

# Kill entire tmux server
tmux kill-server

# List all clients attached to the server
tmux list-clients -t session_name

# List all sessions on the server
tmux list-sessions

# Create a new session
tmux new-session \
  -c start_directory \
  -n window_name \
  -s session_name \
  -t group_name \
  shell_command

# Rename a given session
# (Alias: rename)
tmux rename-session \
  -t session_name \
  new_session_name


# Switch the current client
tmux switch-client \
  -c client_name \
  -t client_session


# Send key presses to the target session
tmux send-keys \
  -t pane_name \
  "keys"

# Send an echo command and run it.
# "Enter" here is a placeholder for a carriage return
tmux send-keys \
  -t pane_name \
  "echo 'Hello, World!'" Enter



# ############################################## #
# Window Environment Commands                    #

# Enter vim-style ex mode
# <prefix>:

# Create new session
# <prefix>:new<cr>

# List sessions
# <prefix>s

# Name session
# <prefix>$

# Window / Tab Commands:
# * c - Create window
# * w - List window
# * n - Next window
# * p - Previous window
# * f - Find window
# * , - Name window
# * & - Kill window

# Pane / Split Commands:
# * o - Swap panes
# * q - Show pane numbers
# * x - Kill pane
# * + - Break pane into window
# * - - Restore pane from window
# * <space> - Toggle between layouts
# * <prefix>q - Show pane numbers (type number to go to that pane)
# * <prefix>{ - Move current pane left
# * <prefix>} - Move current pane right
# * <prefix>z - Toggle pane zoom

