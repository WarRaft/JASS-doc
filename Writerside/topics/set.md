# Установка значения

Для установки значения переменным используется ключевое слово `set`. Установка значения в выражении недопустима.

```SQL
globals
    integer A
endglobals

function main takes nothing returns nothing
    local integer B
    set A = 1
    set B = 2
endfunction
```
