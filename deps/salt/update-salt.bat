REM update SaltGitRepo to your Salt repository
set SaltDriveLetter=E:
set SaltGitRepo=Salt\salt-github\salt

%SaltDriveLetter%
cd %SaltGitRepo%
"C:\salt\python\Portable Python 2.7.2.1\App\python" setup.py install --prefix="C:\\salt\\python\\Portable Python 2.7.2.1\\App\\"
