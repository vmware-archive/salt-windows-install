REM update SaltGitRepo to your Salt repository
set SaltDriveLetter=E:
set SaltGitRepo=Salt\salt-github\salt

%SaltDriveLetter%
cd %SaltGitRepo%
"C:\\salt\\python\\App\\python" setup.py install --prefix="C:\\salt\\python\\App\\"
