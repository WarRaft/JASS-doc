# MathRealCeil

```sql
native MathRealCeil takes [[[real|real.md]]] r returns [[[real|real.md]]]
```

Округляет [аргумент](arguments.md) до ближайшего большего целого.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathRealCeil(3.1)))  // 4.000
    call ConsolePrint([[[R2S|R2S.md]]](MathRealCeil(3.9)))  // 4.000
    call ConsolePrint([[[R2S|R2S.md]]](MathRealCeil(-3.1))) // -3.000
    call ConsolePrint([[[R2S|R2S.md]]](MathRealCeil(-3.9))) // -3.000
endfunction
```