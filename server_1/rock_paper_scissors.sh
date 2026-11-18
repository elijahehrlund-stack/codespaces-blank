
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
    echo "Starting..."
}



quit () {
    echo "Leaving..."
}

while true; do
	options
	read choice 
	case $choice in
		Y) play ; ./rpssecond.sh ;;
		N) quit ; clear ; exit 0 ;;
		*) echo "error" ;;
		 
		
	esac 
done