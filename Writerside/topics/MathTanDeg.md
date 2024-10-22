# MathTanDeg

```sql
native MathTanDeg takes [[[real|real.md]]] r returns [[[real|real.md]]]
```

Возвращает [тангенс](https://w.wiki/9ot7) угла. Принимает угол в [градусах](https://w.wiki/98yP).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathTanDeg(180)))  // 0.000
endfunction
```