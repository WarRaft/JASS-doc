# I2R

```sql
native I2R takes integer i returns real
```

Преобразует [целое число](integer.md) в [вещественное](real.md).

```sql
globals
    real A = I2R(13) // 13.000
endglobals
```