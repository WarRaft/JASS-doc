# Перекрытие

Перекрытие, оно же [shadowing](https://w.wiki/9jvQ) — это ситуация, когда локальная переменная или параметр функции
имеет то же имя, что и
[глобальная переменная](globals.md). В
результате локальная переменная скрывает переменную из внешнего контекста, делая ее недоступной в
текущей области видимости.

Единственный допустимый случай это когда [аргумент](arguments.md) или [локальная переменная](local.md)
перекрывает [глобальную переменную](globals.md).

```SQL
globals
    integer A = 1
endglobals

function Test takes string A returns nothing
    call ConsolePrint(A) // A
endfunction

function main takes nothing returns nothing
    call Test("A")
    call ConsolePrint(I2S(A)) // 1
endfunction
```

> Существует ещё один [бесполезный вариант](arguments.md#local) перекрытия аргументов с одинаковыми именами.
