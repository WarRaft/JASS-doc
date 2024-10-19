# MathIntegerMin

```sql
native MathIntegerMin takes [[[integer|integer.md]]] a, [[[integer|integer.md]]] b returns [[[integer|integer.md]]]
```

Возвращает наименьшее из двух чисел.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerMin(-3, -2)))  // -3
endfunction
```