service=$1

if systemctl is-active --quiet "$service"; then
    echo "Service '$service' is RUNNING"
else
    echo "Service '$service' is NOT running"
fi