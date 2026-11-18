# this boot system goes in another file named ./firewall_boot.sh

start_boot () {
	echo "y. Start the firewall boot process." 
	echo "n. Stop the firewall boot process."

}

start_b () {
	echo "Starting, please wait."
}

stop_b () {
	echo "stopping, please wait."
}


while true; do
	start_boot
	read choice 
	case $choice in
		y) start_b ; ./firewall.sh ;;
		n) stop_b ; clear ; exit ;;
		*) echo "error" ;;
		 
		
	esac 
done
