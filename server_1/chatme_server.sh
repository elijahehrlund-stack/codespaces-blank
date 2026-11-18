echo "Welcome in, you may now chat." 

rules_about () {
    echo "1. See rules."
    echo "2. Leave chatroom." 
    echo "3. Connect to server." 
}
rules () {
    echo "=============================================================="
	echo "Rule 1: Be somewhat kind... please."
    echo "Rule 2: No 418 web errors! (you will get banned for this one)."
    echo "=============================================================="
}
leave () {
	echo "leaving, please wait..."
}

connect () {
    echo "You are connected and may now talk." 
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
    exit 
    else 
    echo " "
fi 


