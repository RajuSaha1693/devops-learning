url="https://api.github.com"

status=$(curl -o /dev/null -s -w "%{http_code}" "$url")

#With retries and max time
#status=$(curl --max-time 5 --retry 2 -o /dev/null -s -w "%{http_code}" "$url")

#-o /dev/null :::: discard the response body
#-s :::: make the response silent no success or error message
# -w $%{http_code} write the status code

# if [[ $status =~ ^[0-9]{2}$ ]]; then
if [ $status -eq 200 ]; then    
    echo "$url is UP (200 OK)"
else    
    echo "$url is DOWN/Unreachable (status: $status)"
fi