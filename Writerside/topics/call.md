# Вызов функции

Функцию можно вызвать из другой функции только в том случае, если она объявлена ниже по коду.

```sql
function A takes nothing returns nothing
  call ConsolePrint("Эта функция выведет этот текст в консоль")
endfunction

function main takes nothing returns nothing // Эта функция будет вызвана интерпретатором
  call A() // Вызываем объявленную выше функцию A
endfunction
```
