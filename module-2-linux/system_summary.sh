echo "==== System Summary as on $(date) ===="

#Check the system information
echo "Uptime : $(uptime)"
echo "Logged In User : $(who)"
echo "CPU usage :"
free -h
echo "Running services :"
ps aux --sort=-%mem | head -6