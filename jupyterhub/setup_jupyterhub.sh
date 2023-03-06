sudo apt install python3.10-venv -y

sudo python3 -m venv /opt/jupyterhub/

sudo /opt/jupyterhub/bin/python3 -m pip install wheel
sudo /opt/jupyterhub/bin/python3 -m pip install jupyterhub jupyterlab
sudo /opt/jupyterhub/bin/python3 -m pip install ipywidgets

sudo apt install nodejs npm -y
sudo npm install -g configurable-http-proxy

sudo mkdir -p /opt/jupyterhub/etc/jupyterhub/
sudo cp jupyterhub_config.py /opt/jupyterhub/etc/jupyterhub/

sudo mkdir -p /opt/jupyterhub/etc/systemd

sudo cp jupyterhub.service /opt/jupyterhub/etc/systemd/

sudo ln -s /opt/jupyterhub/etc/systemd/jupyterhub.service /etc/systemd/system/jupyterhub.service

sudo systemctl daemon-reload
sudo systemctl enable jupyterhub.service
sudo systemctl start jupyterhub.service

sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 8000 -j ACCEPT
sudo netfilter-persistent save
