sudo apt update

# Install apace
sudo apt -y install apache2
sudo systemctl restart apache2

# Set up IPTables
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 80 -j ACCEPT
sudo netfilter-persistent save

# Enable public_html
sudo a2enmod userdir
sudo systemctl restart apache2
