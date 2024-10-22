# MathSinDeg

```sql
native MathSinDeg takes [[[real|real.md]]] r returns [[[real|real.md]]]
```

Возвращает [синус](https://w.wiki/9ot7) угла. Принимает угол в [градусах](https://w.wiki/98yP).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathSinDeg(180)))  // -0.000
endfunction
```