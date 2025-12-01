ping -c 2 www.google.com > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Internet is working"
else
    echo "Internet is Down"
fi

#make it executable: chmod +x check_internet.sh
#run it: ./check_internet.sh 