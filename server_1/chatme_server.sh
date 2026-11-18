echo "Welcome in, you may now chat." 

rules_about () {
    echo ""
    echo "1. See rules."
    echo "2. Leave chatroom." 
    echo "3. Connect to server." 
    echo ""
}
rules () {
    echo ""
    echo ""
    echo "=============================================================="
	echo "Rule 1: Be somewhat kind... please."
    echo "Rule 2: No 418 web errors! (you will get banned for this one)."
    echo "=============================================================="
    echo ""
    echo ""
}
leave () {
    echo ""
	echo "leaving, please wait..."
    echo ""
}

connect () {
    echo ""
    echo "You are connected and may now talk." 
    echo ""
}

while true; do
	rules_about
	read choice 
	case $choice in
		1) rules ;;
		2) stop_server ; exit ;;
        3) connect ; nc -l 127.0.0.1 23 ;;
		*) echo "error" ;;
		 
		
	esac 
done


if [[ command | grep "418" ]]; then
    exit 0 
    else 
    echo " "
fi 


