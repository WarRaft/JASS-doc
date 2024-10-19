# MathIntegerMax

```sql
native MathIntegerMax takes [[[integer|integer.md]]] a, [[[integer|integer.md]]] b returns [[[integer|integer.md]]]
```

Возвращает наибольшее из двух чисел.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerMax(-3, -2)))  // -2
endfunction
```