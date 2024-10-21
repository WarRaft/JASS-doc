# SquareRoot

```sql
native SquareRoot takes [[[real|real.md]]] x returns [[[real|real.md]]]
```

Возвращает [квадратный корень](https://w.wiki/Af$M) числа.

- для `x <= 0` возвращает `0`

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](SquareRoot(256)))  // 16.000
endfunction
```
