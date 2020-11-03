#!/bin/bash
sudo apt-get install git
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
sudo apt install  bzip2 -y
pyenv install miniconda3-4.3.30
pyenv global miniconda3-4.3.30
pip install jupyter
jupyter notebook --generate-config
sed -e 's/#c.NotebookApp.ip/c.NotebookApp.ip/g'  ~/.jupyter/jupyter_notebook_config.py > ~/.jupyter/jupyter_notebook_config_2.py
sed -e 's/localhost/0.0.0.0/g'  ~/.jupyter/jupyter_notebook_config_2.py > ~/.jupyter/jupyter_notebook_config.py
