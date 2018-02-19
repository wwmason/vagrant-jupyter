#!/usr/bin/env bash

# A VirtualBox-based Vagrant VM for Jupyter use
# Copyright (C) 2018 W. W. Mason
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Update pre-installed tools
sudo apt-get update
sudo apt-get install

# Install PIP
curl https://bootstrap.pypa.io/get-pip.py > ~/get-pip.py
sudo -H python3 ~/get-pip.py
sudo rm ~/get-pip.py
python3 -m pip install --user --upgrade pip

# Install Jupyter (with NumPy, SciPy, etc.)
python3 -m pip install --user numpy scipy matplotlib \
	ipython jupyter pandas sympy nose
#sudo -H python3 -m pip install --upgrade pip

# Install pandoc (LaTeX, PDF, etc. conversions)
sudo apt-get install texlive-xetex
sudo apt-get install pandoc

# Install Jupyter

#sudo -H python3 -m pip install jupyter

# Run Jupyter
jupyter notebook --port=8888 --no-browser --ip=0.0.0.0
