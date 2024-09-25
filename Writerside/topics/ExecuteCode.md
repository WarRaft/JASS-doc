# ExecuteCode

Отвечая на запросы трудящихся, в [UjAPI](https://unryzec.github.io/UjAPI) был реализован адекватный
аналог [](ExecuteFunc.md):
```SQL
native ExecuteCode takes code c returns nothing
```

Она использует тип [](code.md), тем самым производя штатный вызов функции который практически ничем не отличается от
явного [](call.md).

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