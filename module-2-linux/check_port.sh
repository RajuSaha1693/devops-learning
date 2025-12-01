port=$1;
#Get args 
if ss -tuln | grep -q ":$port"; then
# ss : it is replacement of netstat ie. socket statistics
# t: show TCP connection
# u: show UDP connection
# l: show listening sockets
# n: show numeric address/port

# after the ss-tuln stored | and then grep is used to find the port in quit mode -q ":$port"
    echo "Port $port is OPEN"
else 
    echo "Port $port is CLOSED"
fi