# MathRound

```sql
native MathRound takes [[[real|real.md]]] r returns [[[integer|integer.md]]]
```

Возвращает значение, которое представляет [целое число](integer.md), ближайшее к [аргументу](arguments.md).
Промежуточные значения округляются в сторону от нуля.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    ConsolePrint([[[I2S|I2S.md]]](MathRound(3.49))) // 3
    ConsolePrint([[[I2S|I2S.md]]](MathRound(3.5))) // 4
    ConsolePrint([[[I2S|I2S.md]]](MathRound(-3.49))) // -3
    ConsolePrint([[[I2S|I2S.md]]](MathRound(-3.5)))// -4 
endfunction
```