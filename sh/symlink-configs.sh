#!/bin/bash
if [ ! -e $HOME/.pokerc ]; then
	ln -sv $SNAP_REAL_HOME/.pokerc       $HOME/.pokerc || true
fi

# WHY THE FUCK DOESN'T THIS WORK? 
#if [ ! -e $HOME/.config/poke ]; then
#	ln -sv $SNAP_REAL_HOME/.config/poke  $HOME/.config/poke || true
#fi

if [ ! -e $HOME/.poke_history ]; then
	ln -sv $SNAP_REAL_HOME/.poke_history $HOME/.poke_history || true
fi
