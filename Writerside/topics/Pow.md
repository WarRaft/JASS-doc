# Pow

```sql
native Pow takes [[[real|real.md]]] x, [[[real|real.md]]] power returns [[[real|real.md]]]
```

Возводит число `x` в [степень](https://w.wiki/Bd7J) `power`.

- для `power == 0.0` возвращает `1`
- для `x == 0.0 and power < 0` возвращает `0`

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](Pow(2, 3)))  // 3.142
endfunction
```