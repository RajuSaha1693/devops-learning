Install and manage NGINX
sudo apt update
sudo apt install nginx -y

---

Check status
systemctl status nginx

---

Restart the nginx
sudo systemctl restart nginx

---

Stop the nginx
sudo systemctl stop nginx

---

Start again
sudo systemctl start nginx

---

Enable on boot
sudo systemctl enable nginx

---

View nginx logs
ls /var/log/nginx
cat /var/log/nginx/access.log
tail -f /var/log/nginx/error.log

---

Create a simple page and start
echo "<h1>Hello from Linux DevOps!</h1>" | sudo tee /var/www/html/index.html

---

Test is it running on localhost or not
curl localhost

---

Create and Kill process
sleep 500 &

Get the PID
ps aux | grep sleep

kill it
kill -9 PID

Create a system info script
nano systeminfo.sh
#!/bin/bash

echo "===== System Information ====="
echo "Date: $(date)"
echo "Uptime: $(uptime)"
echo "Disk Usage:"
df -h
echo "Memory:"
free -h
echo "Top 5 Processes:"
ps aux --sort=-%mem | head -6

Make it executable
chmod +x systeminfo.sh

Run it
./systeminfo.sh
