# MathAngleBetweenPoints

```sql
native MathAngleBetweenPoints takes [[[real|real.md]]] fromX, [[[real|real.md]]] fromY, [[[real|real.md]]] toX, [[[real|real.md]]] toY returns [[[real|real.md]]]
```

Возвращает угол в [градусах](https://w.wiki/98yP), на который необходимо повернуть вектор определённый точками
`(fromX, fromY), (toX, toY)`, таким
образом, чтоб он стал [коллинеарен](https://w.wiki/A3w3) c [осью абсцисс](https://w.wiki/93Wk). Возвращаемый угол
находится в диапазоне `[180, -180)`.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathAngleBetweenPoints(0, 0, 1, 0)))   // 0.000
    call ConsolePrint([[[R2S|R2S.md]]](MathAngleBetweenPoints(0, 0, 1, 1)))   // 45.00
    call ConsolePrint([[[R2S|R2S.md]]](MathAngleBetweenPoints(0, 0, -1, 0)))  // 180.000
    call ConsolePrint([[[R2S|R2S.md]]](MathAngleBetweenPoints(0, 0, -1, -1))) // -135.000
endfunction
```
