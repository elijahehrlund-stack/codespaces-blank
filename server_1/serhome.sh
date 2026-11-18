server_home () {
    echo ""
    echo "___________________________________________________________"
    echo "***************** WELCOME TO SERVER HOME ******************"
    echo "==========================================================="
    echo "1. Proceed to firewall systems. "
    echo "2. Proceed to server data. "
    echo "3. Proceed to chatme (server communication)."
    echo "4. Proceed to rock paper scissors."
    echo "5. Exit server." 
    echo "___________________________________________________________"
    echo "==========================================================="
    echo             "Please choose option [1-5]:..."
}

firewall () {
    echo ""
    echo "Proceeding to firewall boot."
}

server_data () {
    echo ""
    echo "Completing internal server scan, please wait."
    sudo nmap -v -sT -O 127.0.0.1 23
    sudo dmidecode -t system
    sudo uname -a
}

chat () {
    echo ""
    echo "Proceeding to chatme."
}

rock () {
    echo ""
    echo "Proceeding to rock paper scissors." 
}

exit_s () {
    echo ""
    echo "Exiting..." 
}

while true; do
	server_home
	read choice 
	case $choice in
		1) firewall ; clear ; ./firewall_boot.sh ;;
		2) server_data ;;
        3) chat ; clear ; ./chat_me_start.sh ;;
        4) rock ; clear ; ./rock_paper_scissors.sh ;;
        5) exit_s ; clear ; exit 0 ;; 
        0) echo "how did you get this..." ;;
		*) echo "error" ;;
		 
		
	esac 
done