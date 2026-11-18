
if [[ $((RANDOM % 3)) == 1 ]]; then
    echo "===="
    echo "rock"
    echo "===="
elif [[ $((RANDOM % 3)) -ge 1 ]]; then
    echo "====="
    echo "paper"
    echo "====="
else
    echo "========"
    echo "scissors"
    echo "========"
fi


