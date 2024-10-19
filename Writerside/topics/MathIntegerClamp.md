# MathIntegerClamp

```sql
native MathIntegerClamp takes [[[integer|integer.md]]] value, [[[integer|integer.md]]] min, integer max returns [[[integer|integer.md]]]
```

Возвращает число в диапазоне между `min` и `max`.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerClamp(-3, -1, 1))) // -1
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerClamp(-2, -3, 2))) // -2
    call ConsolePrint([[[I2S|I2S.md]]](MathIntegerClamp(5, -1, 3)))  // 3
endfunction
```