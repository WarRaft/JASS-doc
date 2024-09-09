# ExecuteCode

Отвечая на запросы трудящихся, в [UjAPI](https://unryzec.github.io/UjAPI) был реализован адекватный
аналог [](ExecuteFunc.md):
```SQL
native ExecuteCode takes code c returns nothing
```

Она использует тип [code](code.md), тем самым производя штатный вызов функции.

```SQL
function A takes code B returns nothing
    call ExecuteCode(B)
endfunction

function C takes nothing returns nothing
    //...
endfunction

function main takes nothing returns nothing
    call A(function C)
endfunction
```

> Если вам всё же понадобилась эта функция, то лучше перейти
> на [AngelScript](https://warraft.github.io/AngelScript-doc/about.html), где это и многое другое является частью самого
> языка.