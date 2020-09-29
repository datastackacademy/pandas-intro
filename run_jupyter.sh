#!/bin/bash

# check if venv is created
if [ ! -f "$(pwd)/venv/bin/python" ]; then
    echo "python virtualenv is not created. please run install_jupyter.sh first."
    exit
fi
# check if venv is activated. activate if not
if [[ $(which python) != $(pwd)/venv/bin/python ]]; then
    echo "activating virtualenv"
    source venv/bin/activate
fi 
# run jupyter notebooks
jupyter notebook
