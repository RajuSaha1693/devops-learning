service="nginx"

if ! systemctl is-active --quiet "$service"; then
    echo "$(date) - $service is DOWN. Restarting..."
    sudo systemctl restart $service
else
    echo "$(date) - $service is running."
fi

#crontab

#schedule it using below

# */5 * * * * /auto_resatart.sh