Check service status --> systemctl status nginx
Start service --> sudo systemctl start nginx
Stop service --> sudo systemctl stop nginx
Restart service -> sudo systemctl restart nginx
Enabled auto start on boot --> sudo systemctl enable nginx
Disabled service --> sudo systemctl disable nginx

---

Update package --> sudo apt update
Upgrade installed packages --> sudo apt upgrade -y
Search a package --> apt search nginx
Install pacakge --> sudo apt install nginx -y
Uninstall package --> sudo apt remove nginx -y

---

Logs are stored in --> /var/log
Check logs --> ls /var/log
View logs live --> tail -f /var/log/syslog

---

IP address --> ip a
Open Port --> sudo netstat -tulnp
Curl test API --> curl https://api.github.com

---

List running process --> ps aux
Kill process --> Kill PID
Force kill process --> Kill -9 PID

---

Check disk usages --> df -h
Check folder usages --> du -h . | head

---
