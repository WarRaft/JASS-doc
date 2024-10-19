# MathRealMax

```sql
native MathRealMax takes [[[real|real.md]]] a, [[[real|real.md]]] b returns [[[real|real.md]]]
```

Возвращает наибольшее из двух чисел.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2SW|R2SW.md]]](MathRealMax(-.3, -.2), 0, -1))  // -0.2
endfunction
```