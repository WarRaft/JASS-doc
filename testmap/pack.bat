call variables.bat

start /wait "" %mpq% /add %map% "%root%\war3map.j" "war3map.j" /auto

start "" %ujapi% -ujapi "dev" -jass "console" -window -launch "Warcraft" -loadfile %map%