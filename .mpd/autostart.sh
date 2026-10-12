#!/bin/bash
until mpc status >/dev/null 2>&1; do
	sleep 1
done

mpc clear
mpc add /
mpc random on
