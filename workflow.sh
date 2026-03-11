#!/bin/bash

SESSION="work-session"

# Restart Docker to clear all stale port allocations
echo "Restarting Docker..."
sudo systemctl restart docker
echo "Docker restarted"

# Create a single detached tmux session
tmux new-session -d -s "$SESSION"

# Pane 1 (initial): notes - nvim at ~/Work/notes/
tmux send-keys -t "$SESSION" "cd ~/Work/notes && nvim ." C-m

# Pane 2: claude at root
tmux split-window -h -t "$SESSION"
tmux send-keys -t "$SESSION" "cd ~ && claude" C-m

# Pane 3: empty terminal at root (split below pane 2)
tmux split-window -v -t "$SESSION"
tmux send-keys -t "$SESSION" "cd ~" C-m

# Pane 4: gh-dash (split below pane 1)
tmux select-pane -t "$SESSION:0.0"
tmux split-window -v -t "$SESSION"
tmux send-keys -t "$SESSION" "gh dash" C-m

# Attach
tmux attach -t "$SESSION"
