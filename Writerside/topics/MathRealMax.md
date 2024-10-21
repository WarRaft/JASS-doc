# MathRealMax

```sql
native MathRealMax takes [[[real|real.md]]] a, [[[real|real.md]]] b returns [[[real|real.md]]]
```

Возвращает наибольшее из двух чисел.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathRealMax(-.3, -.2)))  // -0.200
endfunction
```