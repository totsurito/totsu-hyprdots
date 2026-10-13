#!/bin/bashmpd
until mpc status >/dev/null 2>&1; do
	sleep 1
done

mpc update --wait
mpc clear
mpc add /
mpc shuffle
