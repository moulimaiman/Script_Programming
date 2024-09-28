#!bin/bash/

clear

red='\033[0;31m'
white='\033[0;0m'
gras='\033[1m'


for i in `seq 1 10` ; do

	case $i in 
		1) echo -e "${gras}${red} -----------   -        -   -----------   -           -           ------------ " ;;
		2) echo -e "${white} -             -\       -   -             -          / \          -            " ;;
		3) echo -e "${red} -             - \      -   -             -         /   \         -            " ;;
		4) echo -e "${white} -             -  \     -   -             -        /     \        -            " ;;
		5) echo -e "${red} -             -   \    -   -             -       /       \       -            " ;;
		6) echo -e "${white} -----------   -    \   -   -----------   -      /---------\      ------------ " ;;
		7) echo -e "${red} -             -     \  -             -   -     /           \                - " ;;
		8) echo -e "${white} -             -      \ -             -   -    /             \               - " ;;
		9) echo -e "${red} -             -       \-             -   -   /               \              - " ;;
               10) echo -e "${white} -----------   -        -   -----------   -  /                 \  ------------ " ;; 
	esac

	sleep 0.5
done

clear

for j in `seq 1 10` ; do
	case $j in 
		1 | 3 | 5 | 7 | 9 ) echo ""
				    echo ""
				    echo ""
				    echo ""
				    echo ""
				 echo -e "${red} -----------   -        -   -----------   -           -           ------------ " 
                                 echo -e "${white} -             -\       -   -             -          / \          -            " 
                	         echo -e "${red} -             - \      -   -             -         /   \         -            " 
                		 echo -e "${white} -             -  \     -   -             -        /     \        -            " 
                		 echo -e "${red} -             -   \    -   -             -       /       \       -            " 
                		 echo -e "${white} -----------   -    \   -   -----------   -      /---------\      ------------ " 
                		 echo -e "${red} -             -     \  -             -   -     /           \                - " 
                		 echo -e "${white} -             -      \ -             -   -    /             \               - " 
                		 echo -e "${red} -             -       \-             -   -   /               \              - " 
               			 echo -e "${white} -----------   -        -   -----------   -  /                 \  ------------ " ;;
		2 | 4 | 6 | 8 | 10 ) 
  				 echo -e "${red} -----------   -        -   -----------   -           -           ------------ " 
                                 echo -e "${white} -             -\       -   -             -          / \          -            " 
                                 echo -e "${red} -             - \      -   -             -         /   \         -            " 
                                 echo -e "${white} -             -  \     -   -             -        /     \        -            " 
                                 echo -e "${red} -             -   \    -   -             -       /       \       -            " 
                                 echo -e "${white} -----------   -    \   -   -----------   -      /---------\      ------------ " 
                                 echo -e "${red} -             -     \  -             -   -     /           \                - " 
                                 echo -e "${white} -             -      \ -             -   -    /             \               - " 
                                 echo -e "${red} -             -       \-             -   -   /               \              - " 
                                 echo -e "${white} -----------   -        -   -----------   -  /                 \  ------------ " ;; 
	esac
sleep 0.25
clear
done


echo -e " WELCOME TO YOUR SCHOOL ${red} ENSIAS /\\" 
echo -e " ${red} ----------------------"

select i in "1A" "2A" "3A" "END" ; do
	case $REPLY in
		1) read -p " YOUR NAME : " name
		   read -p " YOUR DIVISION : " div
		   echo " $name : $div " >> 1A.txt ;;
		2) read -p " YOUR NAME : " name
                   read -p " YOUR DIVISION : " div
                   echo " $name : $div " >> 2A.txt ;;
		3) read -p " YOUR NAME : " name
                   read -p " YOUR DIVISION : " div
                   echo " $name : $div " >> 3A.txt ;;
		4) break ;;
		*) echo "Error OF Input" ;;
	esac
done






