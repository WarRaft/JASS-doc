# MathRealMin

```sql
native MathRealMin takes [[[real|real.md]]] a, [[[real|real.md]]] b returns [[[real|real.md]]]
```

Возвращает наименьшее из двух чисел.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathRealMin(-.3, -.2)))  // -0.300
endfunction
```