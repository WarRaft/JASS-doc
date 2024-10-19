# MathRealRound

```sql
native MathRealRound takes real r returns real
```

Возвращает значение, которое представляет [вещественное число](real.md) без дробной части, ближайшее
к [аргументу](arguments.md).
Промежуточные значения округляются в сторону от нуля.

За исключением возвращаемого типа аналогична [](MathRound.md).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2SW|R2SW.md]]](MathRealRound(3.49), 0, -1))  // 3.0
    call ConsolePrint([[[R2SW|R2SW.md]]](MathRealRound(3.5), 0, -1))   // 4.0
    call ConsolePrint([[[R2SW|R2SW.md]]](MathRealRound(-3.49), 0, -1)) // -3.0
    call ConsolePrint([[[R2SW|R2SW.md]]](MathRealRound(-3.5), 0, -1))  // -4.0
endfunction
```