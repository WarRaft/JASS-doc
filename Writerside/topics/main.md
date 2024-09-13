# main

Начальная точка исполнения, которая вызывается приблизительно на _70%_ загрузки карты и до её вызова запрещено
создавать игровые объекты.

```sql
function main takes nothing returns nothing
  // Код начнёт исполняться здесь и можно создавать игровые объекты за исключением фреймов.
endfunction
```

> В момент вызова `main` фреймы ещё не созданы, поэтому используйте таймер с нулевой задержкой.