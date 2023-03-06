sudo mkdir -p /opt/conda/envs/
sudo /opt/conda/bin/conda create --prefix /opt/conda/envs/python3.9 python=3.9 ipykernel ipython numpy matplotlib pandas scipy ipympl scikit-learn  -y
sudo /opt/conda/envs/python3.9/bin/python -m ipykernel install --prefix /usr/local/ --name 'python3.9' --display-name "Python 3.9 (default)"
