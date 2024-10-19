# R2I

```sql
native R2I takes real r returns integer
```

Преобразует [вещественное число](real.md) в [целое](integer.md). При этом дробная часть отбрасывается.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](R2I(3.1))) // 3
    call ConsolePrint([[[I2S|I2S.md]]](R2I(3.9))) // 3
endfunction
```