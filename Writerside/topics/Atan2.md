# Atan2

```sql
native Atan2 takes [[[real|real.md]]] y, [[[real|real.md]]] x returns [[[real|real.md]]]
```

Возвращает угол от [оси абсцисс](https://w.wiki/93Wk) до прямой, содержащей начало координат и точку с координатами `x`,
`y`. Угол
задается в [радианах](https://w.wiki/7YCS) от $-\pi$ до $\pi$, исключая $-\pi$.

- при `x == 0 and y == 0` возвращает `0`
- `Atan2(y,x)` эквивалентен `Atan(x/y)`, исключая `y` равный нулю

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](Atan2(1, 1)))  // 0.785
    call ConsolePrint([[[R2S|R2S.md]]](Atan2(-1, -1)))  // -2.356
endfunction
```
