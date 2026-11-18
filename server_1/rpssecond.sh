

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
		rock) play ; ./rps.sh ;;
		paper) play ; ./rps.sh ;;
        scissors) play ; ./rps.sh ;;
		*) echo "Done." ; clear ; exit 0 ;;
		 
		
	esac 
done
