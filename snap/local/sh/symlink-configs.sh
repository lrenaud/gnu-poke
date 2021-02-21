#!/usr/bin/env bash

set \
	-o errexit \
	-o errtrace \
	-o nounset \
	-o pipefail

# These are kind of arbitrary. The first two are typical
ln -s $SNAP_REAL_HOME/.pokerc $HOME/.pokerc 2>/dev/null || true
ln -s $SNAP_REAL_HOME/.poke_history $HOME/.poke_history 2>/dev/null || true

# These two are what I expect most users will end up wanting, but I don't have
# any firm justification, and snap confinement means I have to be very explicit
# in allowing them.
ln -s $SNAP_REAL_HOME/.poke.d $HOME/.poke.d 2>/dev/null || true
mkdir -p $HOME/.config
ln -s $SNAP_REAL_HOME/.config/poke  $HOME/.config/poke 2>/dev/null || true

exec "${@}"