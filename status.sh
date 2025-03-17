#!/bin/bash

user_system(){
	whoami | uname -a | awk '{print $1" "$2" "$3}'
}

ram_space(){
	free -m -h | grep "Mem:" | awk '{print $3 "/" $2}'
}

hdd_space(){
	df -h | grep /dev/sda2 | awk '{print "Used:"$3" Available:"$2}'
}

datetime(){
	date |  awk '{print $4}'
}

main(){
	while true; do
		xsetroot -name "▋ 󱑂 $(datetime) ▋ 󰉉 $(hdd_space) ▋  $(ram_space) ▋ 󰣇 $(user_system) "
	done

}

main
