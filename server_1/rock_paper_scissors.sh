
options () {
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "Y. Press [Y] to play." 
echo "N. Press [N] to quit."
}

play () {
    echo ""
    echo ""
if [[ $(RANDOM 3 %) == 2 ]]; then
    echo "rock"
elif [[ $(RANDOM 3 %) -ge 2 ]]; then
    echo "paper"
else
    echo "scissors"
fi
}

quit () {
    echo "Leaving..."
}


while true; do
	options
	read choice 
	case $choice in
		Y) play ;;
		N) quit ; exit 0 ;;
        0) echo "no" ;; 
		*) echo "error" ;;
		 
		
	esac 
done