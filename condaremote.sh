#!/bin/bash
echo "Setting up remote jupyter notebook server"
source activate cv
jupyter notebook --generate-config
cd
mkdir .certs
cd .certs
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem
cd ~/.jupyter
echo "c = get_config()" >> ./jupyter_notebook_config.py
echo "c.NotebookApp.certfile = u'/home/ubuntu/.certs/mycert.pem'" >> ./jupyter_notebook_config.py
echo "c.NotebookApp.ip = '*'" >> ./jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ./jupyter_notebook_config.py
echo "c.NotebookApp.port = 8888" >> ./jupyter_notebook_config.py
cd ~
echo "Finished setting up remote jupyter notebook server"
echo "Anaconda setup complete"
conda info --envs
