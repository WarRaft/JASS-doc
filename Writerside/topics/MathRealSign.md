# MathRealSign

```sql
native MathRealSign takes [[[real|real.md]]] r returns [[[integer|integer.md]]]
```

<snippet id="description">

Функция возвращает знак числа, указывающий на то, является ли число отрицательным, положительным или нулём.

Возвращает `1` если число положительное, `-1` если отрицательное и ноль в случае нуля.

</snippet>

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](MathRealSign(-3))) // -1
    call ConsolePrint([[[I2S|I2S.md]]](MathRealSign(0))) // 0
    call ConsolePrint([[[I2S|I2S.md]]](MathRealSign(3))) // 1
endfunction
```