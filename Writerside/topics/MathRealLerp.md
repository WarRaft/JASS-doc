# MathRealLerp

```sql
native MathRealLerp takes [[[real|real.md]]] a, [[[real|real.md]]] b, [[[real|real.md]]] t returns [[[real|real.md]]]
```

Интерполирует значение в диапазоне `[a, b]` на основании параметра `t`.

```tex
\begin{equation}
x = a + t(b - a)
\end{equation}
```

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathRealLerp(10, 20, 0)))  // 10.000
    call ConsolePrint([[[R2S|R2S.md]]](MathRealLerp(10, 20, .5))) // 15.000
    call ConsolePrint([[[R2S|R2S.md]]](MathRealLerp(10, 20, 1)))  // 20.000
endfunction
```