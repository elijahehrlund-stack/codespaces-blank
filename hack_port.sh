
run () {
    echo "1. nmap"
    echo "2. quit"
    echo "3. curl"
    echo "choose [1,2]"
}

r () {
    echo ""
}

q () {
    echo ""
}

c () {
    echo ""
}
ip_table=('scanme.nmap.org' 'aaa')

while true; do
	run
	read choice 
	case $choice in
		1) r ; sudo nmap -Pn -sS -sV -p- -O echo ${ip_table[0]} ; sudo nmap -p- -sS -sV -sC -O -Pn --reason --script="default,safe,vuln" -T4 -oA deep_scan ${ip_table[0]} ;;
		2) q ; exit 0 ;;
        3) c ; curl -i echo ${ip_table[0]} ;;
		*) echo "error" ;;
	esac 
done