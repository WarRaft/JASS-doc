# I2R

```sql
native I2R takes [[[integer|integer.md]]] i returns [[[real|real.md]]]
```

Преобразует [целое число](integer.md) в [вещественное](real.md).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2SW|R2SW.md]]](I2R(3), 0, 5)) // 3
endfunction
```