# MathRealAbs

```sql
native MathRealAbs takes [[[real|real.md]]] r returns [[[real|real.md]]]
```

Возвращает абсолютное значение числа.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2SW|R2SW.md]]](MathRealAbs(-.3), 0, -1))  // 0.3
    call ConsolePrint([[[R2SW|R2SW.md]]](MathRealAbs(.3), 0, -1))  // 0.3
endfunction
```