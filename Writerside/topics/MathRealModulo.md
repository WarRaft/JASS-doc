# MathRealModulo

```sql
native MathRealModulo takes [[[real|real.md]]] dividend, [[[real|real.md]]] divisor returns [[[real|real.md]]]
```

<snippet id="description">

[Деление с остатком](https://w.wiki/BGiy) делимого `dividend` на делитель `divisor` означает нахождение таких целых
чисел, что выполняется равенство:

```
dividend = divisor * q + remainder
```

Где `q` называется неполным частным от деления, а `remainder` — остатком от деления, который собственно и возвращает
функция.
Если остаток равен нулю, то `dividend` нацело делится на `divisor`.

</snippet>

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathRealModulo(-5.5, 2.5))) // -0.500
    call ConsolePrint([[[R2S|R2S.md]]](MathRealModulo(-10, -3.3))) // -0.100
    call ConsolePrint([[[R2S|R2S.md]]](MathRealModulo(6.24, 2.6))) // -1.040
    call ConsolePrint([[[R2S|R2S.md]]](MathRealModulo(-11, 5.5)))  // 0.000
endfunction
```