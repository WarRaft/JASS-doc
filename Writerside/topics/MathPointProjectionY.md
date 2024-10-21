# MathPointProjectionY

```sql
native MathPointProjectionY takes [[[real|real.md]]] y, [[[real|real.md]]] angle, [[[real|real.md]]] distance returns real
```

Возвращает новое значение координаты `y`, смещённое на угол `angle` и расстояние `distance` от исходного. Принимает угол
в [градусах](https://w.wiki/98yP).

<!-- https://en.wikibooks.org/wiki/LaTeX/Mathematics -->

```tex
\begin{equation}
y' = \sin(angle) * distance + y
\end{equation}
```

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathPointProjectionY(1, 270, 3)))  // -2.000
endfunction
```
