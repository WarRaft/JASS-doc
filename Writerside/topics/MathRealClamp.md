# MathRealClamp

```sql
native MathRealClamp takes [[[real|real.md]]] value, [[[real|real.md]]] min, [[[real|real.md]]] max returns [[[real|real.md]]]
```

Возвращает число в диапазоне между `min` и `max`.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](MathRealClamp(-3, -1, 1))) // -1.000
    call ConsolePrint([[[R2S|R2S.md]]](MathRealClamp(-2, -3, 2))) // -2.000
    call ConsolePrint([[[R2S|R2S.md]]](MathRealClamp(5, -1, 3)))  // 3.000
endfunction
```