#!/usr/bin/env bash

INITIAL_QUERY="${*:-}"
fd --type f | fzf --multi --query "$INITIAL_QUERY" \
    --preview "bat --color=always {}" \
    --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
    --bind "enter:become(vim {1})" \
    --bind "del:execute(rm -i {+})" \
