#!/bin/bash
tmux new-session -d -s work-session

tmux send-keys -t work-session "cd ~/work/gemini/ && ./tools.sh port-forward-api" C-m

tmux split-window -h
tmux send-keys "cd ~/work/gemini/service-api-go && sleep 30s && air serve-graphql --pe" C-m

tmux split-window -v
tmux send-keys "cd ~/work/gemini/react-ui && pnpm run dev" C-m

tmux select-pane -L
tmux split-window -v
tmux send-keys "k9s" C-m

tmux split-window -v
tmux send-keys "cd ~/work/gemini" C-m


# Attach the session to the terminal so you can see it
tmux attach -t work-session
