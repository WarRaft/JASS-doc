call variables.bat

set j="%folder%\jasstest.j"

copy "%root%\war3map.j" %j%

start /wait "" %mpq% /add %map% %j% "war3map.j" /auto

start "" %ujapi% -ujapi "dev" -jass "console" -window -launch "Warcraft" -loadfile %map%
