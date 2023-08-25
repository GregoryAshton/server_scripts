# Set up the base directory
sudo mkdir -p /opt/conda/envs/

# Set up the default python installation with some standard packages
sudo /opt/conda/bin/conda create --prefix /opt/conda/envs/python3.9_data_science python=3.9 ipykernel ipython numpy matplotlib pandas scipy ipympl scikit-learn ipywidgets iminuit plotly pymc sympy -y
sudo /opt/conda/envs/python3.9_data_science/bin/python -m ipykernel install --prefix /usr/local/ --name 'python3.9_data_science' --display-name "Python 3.9 Data Science (default)"
