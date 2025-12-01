echo "==== Network Monitor Started: $(date) ===="

#check internet
ping -c 1 www.google.com > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Internet is OK"
    else
        echo "Internet is DOWN"
    fi

#check ports
ports=(22 80 443 3000)
for p in "${ports[@]}"; do
 if ss -tuln | grep -q ":$p"; then
    echo "Port $p: OPEN"
 else
    echo "port $p: CLOSED"
 fi
done

#check services
services=("nginx" "cron" "ssh")

for s in "${services[@]}" ; do
    if systemctl is-active --quiet "$s"; then
        echo "Service $s: RUNNING"
    else
        echo "Service $s: STOPPED"
    fi
done

echo "====================================="

