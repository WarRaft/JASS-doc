# MathPointProjectionX

```sql
native MathPointProjectionX takes [[[real|real.md]]] x, [[[real|real.md]]] angle, [[[real|real.md]]] distance returns real
```

Возвращает новое значение координаты `x`, смещённое на угол `angle` и расстояние `distance` от исходного. Принимает угол
в [градусах](https://w.wiki/98yP).

<!-- https://en.wikibooks.org/wiki/LaTeX/Mathematics -->

```tex
\begin{equation}
x' = \cos(angle) * distance + x
\end{equation}
```

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathPointProjectionX(1, 180, 3)))  // -2.000
endfunction
```
