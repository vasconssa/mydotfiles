pyenv install 3.6.8
pyenv virtualenv 3.6.8 torch_3.6.8
pyenv virtualenv 3.6.8 tensorflow_3.6.8

pyenv shell torch_3.6.8
pip install --upgrade pip
pip install --upgrade -r $HOME/.dotfiles/python/requirements.txt
pip install --upgrade -r $HOME/.dotfiles/python/torch.txt

pyenv shell tensorflow_3.6.8
pip install --upgrade pip
pip install --upgrade -r $HOME/.dotfiles/python/requirements.txt
pip install --upgrade -r $HOME/.dotfiles/python/tensorflow.txt