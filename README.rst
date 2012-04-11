======================
Salt Windows Installer
======================

This repository is for the Windows installer

Work is currently ongoing to create a simple Salt Windows installer.
For now, you can install Salt from source.
Download the Salt source from github here https://github.com/saltstack/salt
We've created a repository containing all the Salt dependencies for your convenience here:   https://github.com/saltstack/salt-windows-install

## Install on Windows XP 32 bit ##
### First, install the Salt dependencies ###
1.  Python 2.7.x from http://python.org
    1.  Add "C:\Python27" to your path
1.  Install vcredist_x86.exe
1.  Win32OpenSSL-1_0_0e.exe
    1.  Choose the first option to install in Windows system directory
1.  pyzmq-2.1.11.win32-py2.7.msi
1.  M2Crypto-0.21.1.win32-py2.7.msi
1.  pycrypto-2.3.win32-py2.7.msi
1.  PyYAML-3.10.win32-py2.7.msi
1.  pywin32-216.win32-py2.7.exe
1.  Cython-0.15.1.win32-py2.7.exe
1.  msgpack-python-0.1.12.win32-py2.7.exe
1.  distribute_setup.py
    1.  http://python-distribute.org/distribute_setup.py
    1.  "python distribute_setup.py"
1.  Add "C:\Python27\scripts" to your path
1.  jinja2
    1.  "easy_install jinja2"

### Second, install the Salt source ###
1.  Open command prompt and change directory into the Salt source directory
1.  Run "python setup.py install"
1.  Create "C:\salt" folder
1.  Copy saltsource/conf/minion.template to "C:\salt\minion"
1.  Edit "C:\salt\minion":
    1.  master: ipaddress or hostname of your salt-master
    1.  root_dir:  C:\salt\
    1.  multiprocessing: False

### Start the Salt minion ###
1.  From command prompt run "python \Python27\Scripts\salt-minion -c 'c:\salt\minion'"
1.  On your Salt Master, accept your Windows Salt minion key

### Install and start the Salt minion as a Windows service ###
1.  From command prompt run "python \Python27\Scripts\salt-minion -c 'c:\salt\minion' -d"
1.  On your Salt Master, accept your Windows Salt minion key
