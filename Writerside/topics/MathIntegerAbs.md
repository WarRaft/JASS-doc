# MathIntegerAbs

```sql
native MathIntegerAbs takes [[[integer|integer.md]]] i returns [[[integer|integer.md]]]
```

Возвращает абсолютное значение числа.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerAbs(-3)))  // 3
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerAbs(3)))  // 3
endfunction
```