# ExecuteCode

<primary-label ref="ujapi"/>

```SQL
native ExecuteCode takes code c returns nothing
```

Вызывает функцию используя тип [](code.md).

```SQL
function A takes code B returns nothing
    call ExecuteCode(B)
endfunction

function C takes nothing returns nothing
    call ConsolePrint("test") // Выводим в консоль текст
endfunction

function D takes nothing returns nothing
    call DestroyTimer(GetExpiredTimer()) // Уничтожаем использованный таймер
    call A(function C)
endfunction

function main takes nothing returns nothing
    call TimerStart(CreateTimer(), 0.0, false, function D) // Прямой вызов из main не работает, поэтому используйте отложенный запуск. 
endfunction
```

> Если вам всё же понадобилась эта функция, то лучше перейти
> на [AngelScript](https://warraft.github.io/AngelScript-doc/about.html), где это и многое другое является частью самого
> языка.