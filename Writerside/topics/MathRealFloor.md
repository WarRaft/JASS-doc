# MathRealFloor

```sql
native MathRealFloor takes [[[real|real.md]]] r returns [[[real|real.md]]]
```

Округляет [аргумент](arguments.md) до ближайшего меньшего целого.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathRealFloor(3.1)))  // 3.0
    call ConsolePrint([[[R2S|R2S.md]]](MathRealFloor(3.9)))  // 3.0
    call ConsolePrint([[[R2S|R2S.md]]](MathRealFloor(-3.1))) // -4.0 
    call ConsolePrint([[[R2S|R2S.md]]](MathRealFloor(-3.9))) // -4.0 
endfunction
```