======================
Salt Windows Installer
======================

This repository is for the Windows installer

Work is currently ongoing to create a simple Salt Windows installer in the
subfolder "salt" inside the "deps" folder, but is currently broken.
For now, you can install Salt from source.
Download the Salt source from github here https://github.com/saltstack/salt
We've created a repository containing all the Salt dependencies for your 
convenience here:   https://github.com/saltstack/salt-windows-install

These instructions are for installing on Windows XP 32bit. You can find
these packages here: 
https://github.com/saltstack/salt-windows-install/tree/master/deps/win32-py2.7

For Windows 7 64 bit, please use the corresponding packages found here: 
https://github.com/saltstack/salt-windows-install/tree/master/deps/win-amd64-py2.7


Install on Windows XP 32 bit
----------------------------

First, install the Salt dependencies
------------------------------------

#.  Python 2.7.x from http://python.org

    #.  Add "C:\\Python27" to your path

#.  Install vcredist_x86.exe
#.  Win32OpenSSL-1_0_0e.exe

    #.  Choose the first option to install in Windows system directory

#.  pyzmq-2.1.11.win32-py2.7.msi
#.  M2Crypto-0.21.1.win32-py2.7.msi
#.  pycrypto-2.3.win32-py2.7.msi
#.  PyYAML-3.10.win32-py2.7.msi
#.  pywin32-216.win32-py2.7.exe
#.  Cython-0.15.1.win32-py2.7.exe
#.  msgpack-python-0.1.12.win32-py2.7.exe
#.  distribute_setup.py

    #.  http://python-distribute.org/distribute_setup.py
    #.  "python distribute_setup.py"

#.  Add "C:\\Python27\\scripts" to your path
#.  jinja2

    #.  "easy_install jinja2"

Second, install the Salt source
-------------------------------

#.  Open command prompt and change directory into the Salt source directory
#.  Run "python setup.py install"
#.  Create "C:\\salt" folder
#.  Copy saltsource/conf/minion.template to "C:\\salt\\minion"
#.  Edit "C:\\salt\\minion":

    #.  master: ipaddress or hostname of your salt-master
    #.  root_dir:  C:\\salt\\
    #.  multiprocessing: False

Start the Salt minion
---------------------

#.  From command prompt run "python \\Python27\\Scripts\\salt-minion -c 'c:\\salt\\minion'"
#.  On your Salt Master, accept your Windows Salt minion key

Install and start the Salt minion as a Windows service
------------------------------------------------------

#.  From command prompt run "python \\Python27\\Scripts\\salt-minion -c 'c:\\salt\\minion' -d"
#.  On your Salt Master, accept your Windows Salt minion key
