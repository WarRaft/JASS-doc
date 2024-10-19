# MathIntegerSign

```sql
native MathIntegerSign takes [[[integer|integer.md]]] i returns [[[integer|integer.md]]]
```

<include from="MathRealSign.md" element-id="description"/>

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerSign(-3))) // -1
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerSign(0))) // 0
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerSign(3))) // 1
endfunction
```