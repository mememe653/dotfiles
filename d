#!/usr/bin/env bash

#INITIAL_QUERY="${*:-}"
#fd --type d | fzf --query "$INITIAL_QUERY" \
    #--preview "tree -C {}" \
    #--bind "enter:become(cd {1})" \
    #--bind "del:execute(rm -ri {+})" \

INITIAL_QUERY="${*:-}"
selection=$(fd --type d | fzf --query "$INITIAL_QUERY" \
    --preview "tree -C {}" \
    --bind "del:execute(rm -ri {+})" \
)

cd "$selection"
#source $(cd "$selection")
