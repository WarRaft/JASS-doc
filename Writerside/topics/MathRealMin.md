# MathRealMin

```sql
native MathRealMin takes [[[real|real.md]]] a, [[[real|real.md]]] b returns [[[real|real.md]]]
```

Возвращает наименьшее из двух чисел.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2SW|R2SW.md]]](MathRealMin(-.3, -.2), 0, -1))  // -0.3
endfunction
```