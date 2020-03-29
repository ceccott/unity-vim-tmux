#!/bin/zsh
UNITY_WDIR=$(dirname $@)
tmux has-session -t unity
if [ "$?" -eq "0" ]; then
  echo "session exists"
  tmux send -t unity.0 ':tabnew ' $@ ENTER
   wmctrl -a unitmux #window to front
else
  echo "session does NOT exist"
  echo "creating session..."
  gnome-terminal --title="unitmux"--working-directory=$UNITY_WDIR -e 'tmuxinator unity'
  sleep 0.5 #wait for session to load
  tmux send -t unity.0 ':edit ' $@ ENTER
fi
 
exit 0
