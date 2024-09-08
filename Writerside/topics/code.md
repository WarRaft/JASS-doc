# code

Указатель на функцию для передачи её аргументом. Самый частый пример, это передача функции в таймер:

```sql
native TimerStart takes timer whichTimer, real timeout, boolean periodic, code handlerFunc returns nothing
```

```sql
function myTimerCallback takes nothing returns nothing
    //...
endfunction

function main takes nothing returns nothing
    call TimerStart(CreateTimer(), 1. false, function myTimerCallback)
endfunction
```

Игра не предоставляет возможности собственноручно вызывать функции из переменных с типом `code`. Этот функционал
добавлен в [UjAPI](https://unryzec.github.io/UjAPI/):

```sql
native ExecuteCode takes code c returns nothing
```
