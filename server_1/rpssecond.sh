

play () {
    echo ""
    echo ""
    echo ""
    echo "Enter a choice to play."
    echo "Rock."
    echo "Paper."
    echo "Scissors."
    echo "Exit (any key then enter)"
    echo ""
    echo ""

 
}

while true; do
	play
	read choice 
	case $choice in
		rock) play ; sleep 1 ; echo "rock..." ; sleep 1 ; echo "paper..." ; sleep 1 ; echo "scissors..." ; sleep 1 ; echo "SHOOT!" ; ./rps.sh ;;
		paper) play ; sleep 1 ; echo "rock..." ; sleep 1 ; echo "paper..." ; sleep 1 ; echo "scissors..." ; sleep 1 ; echo "SHOOT!" ; ./rps.sh ;;
        scissors) play ; sleep 1 ; echo "rock..." ; sleep 1 ; echo "paper..." ; sleep 1 ; echo "scissors..." ; sleep 1 ; echo "SHOOT!" ; ./rps.sh ;;
		*) echo "Done." ; clear ; exit 0 ;;
		 
		
	esac 
done
