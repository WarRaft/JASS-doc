# R2I

```sql
native R2I takes real r returns integer
```

Преобразует [вещественное число](real.md) в [целое](integer.md). При этом дробная часть отбрасывается.

```sql
globals
    integer A = R2I(3.1) // 3
    integer B = R2I(3.9) // 3
endglobals
```