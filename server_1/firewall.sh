# next basic firewall, this goes in another file named ./firewall.sh


show_menu_for_firewall() {
echo "_________________________________________"
echo "========================================="
echo "*****FIREWALL MINI MANAGEMENT SYSTEM*****"
echo "========================================="
echo "1. About the creator..."
echo "2. Enable..."
echo "3. Disable..."
echo "4. Add a rule to the firewall..."
echo "5. Remove a rule from the firewall..."
echo "6. View the firewall rules..."
echo "7. Exit the system..."
echo "8. Secure firewall..."
echo "9. When to use the Secure firewall (READ)"
echo "__________________________________________"
echo "=========================================="
echo -n "Please choose an option [1-9]:..."
}

		

about_the_creator() {

	echo "I created this... rather basic firewall as one of my first proper blue team projects. While this firewall currently has several major flaws (some of which have been added purposefully) which stop it from being usable by modern standards, for what this project is, I believe it serves its purpose."
	echo "*"
	echo "About me:"
	echo "Hello!, My name is Elijah :)  I'm currently a teenager (at the time of making this), and am deeply passionate about mathematics and computer systems (including ethical hacking and system design). Likewise, I plan to soon complete my CompTAI security+ cert, along with other certs to help me start my life of corporate slavery... I mean work. Anyhow, I hope you enjoy messing around with my firewall, and if not, please let me know what changes should be implemented!"
	echo "*"

}


enable() { 
	echo "Starting..."
	sudo iptables -P INPUT DROP #blocks unpermitted traffic 
	sudo iptables -P FORWARD DROP #blocks unless explicitly allowed 
	sudo iptables -P OUTPUT ACCEPT #allows packets to leave 
	sudo iptables -A INPUT -p tcp --dport 23 -j ACCEPT #port 23 allowed telnet
	sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT #port 80 Http allowed 
	sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT 
	sudo iptables -A INPUT -i lo -j ACCEPT #allowed internal communication 
	echo "Complete."
echo "Port 23 and 80 are currently open, this can be changed."
		
}

disable() {
	echo "byebyeeeee...."
	sudo iptables -P INPUT ACCEPT
	sudo iptables -P FORWARD ACCEPT
	sudo iptables -P OUTWARD ACCEPT
	sudo iptables -F
	echo "Firewall successfully disabled." 
}



add_rule() {
	echo -n "Enter a rule please."
	read rule 
	sudo iptables $rule
	echo "Rule added, thank you."
}



remove_rule () {
	echo -n "Enter a role to del ..."
	read rule
	sudo iptables $rule
	echo "Rule deleted, thank you."
}

view_rules() {
	echo "Current firewall rules:"
	sudo iptables -L -v --line-numbers
}




secure_firewall () {
	echo "Securing...."
	sudo iptables -P INPUT DROP
	sudo iptables -P FORWARD DROP
	sudo iptables -P OUTWARD ACCEPT
	sudo iptables -A INPUT -i lo -j ACCEPT
	echo "Firewall successfully secured, all traffic blocked." 
}
	

when_secure () {
	echo "################################### IMPORTANT #####################################"
	echo "Please only use option 8 (Secure firewall) in case of an attack or server downtime." 
	echo "###################################################################################"

}



#backend

while true; do
	show_menu_for_firewall
	read choice 
	case $choice in
		1) about_the_creator ;;
		2) enable ;;
		3) disable ;; 
		4) add_rule ;;
		5) remove_rule ;;
		6) view_rules ;;
		7) echo "exiting.."; clear ; exit 0 ;;
		8) secure_firewall ;;
		9) when_secure ;;
	esac 
done


