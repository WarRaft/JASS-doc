# MathIntegerModulo

```sql
native MathIntegerModulo takes [[[integer|integer.md]]] dividend, [[[integer|integer.md]]] divisor returns [[[integer|integer.md]]]
```

<include from="MathRealModulo.md" element-id="description"/>

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerModulo(-5, 8)))  // -5
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerModulo(-10, -3)))  // -1
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerModulo(6, 4)))  // 2
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerModulo(-12, 6)))  // 0
endfunction
```