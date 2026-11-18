
if [[ $((RANDOM % 3)) == 1 ]]; then
    echo "rock"
elif [[ $((RANDOM % 3)) -ge 1 ]]; then
    echo "paper"
else
    echo "scissors"
fi


