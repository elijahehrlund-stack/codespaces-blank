
#to start chatme



start_boot () { 
    echo "Welcome to chatme server!.. Please choose a starting option." 
    echo "============================================================"
    echo "============================================================"
    echo "y. This will start the chatme server."
    echo "n. This will close the chatme server." 
    echo "============================================================"
    echo "============================================================"
}
start_server () {
	echo "Starting, please wait..."
}
stop_server () {
	echo "stopping, please wait..."
}

if [[ 1=1 ]]; then
echo "Thank you for choosing chatme!"
    else 
echo "Goodbye."
fi 


while true; do
	start_boot
	read choice 
	case $choice in
		y) start_server ; ./chatme_server.sh ;;
		n) stop_server ; clear ; exit ;;
		*) echo "error" ;;
		 
		
	esac 
done
