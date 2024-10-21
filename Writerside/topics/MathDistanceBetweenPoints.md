# MathDistanceBetweenPoints

```sql
native MathDistanceBetweenPoints takes [[[real|real.md]]] fromX, [[[real|real.md]]] fromY, [[[real|real.md]]] toX, [[[real|real.md]]] toY returns [[[real|real.md]]]
```

Возвращает расстояние между точками с координатами (`fromX`, `fromY`) и (`toX`, `toY`).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathDistanceBetweenPoints(0, 0, 3, 4))) // 5.000
endfunction
```
