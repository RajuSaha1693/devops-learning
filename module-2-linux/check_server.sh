servers=(
    "www.google.com"
    "www.github.com"
    "www.amazon.com"
    "www.stackoverflow"
)

for s in "${servers[@]}" ; do 
    ping -c 1 $s > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "$s is reachable";
    else
        echo "$s is not reachable"
    fi 
done
