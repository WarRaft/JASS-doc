# I2S

```sql
native I2S takes [[[integer|integer.md]]] i returns [[[string|string.md]]]
```

Преобразует [целое число](integer.md) в [строку](string.md).

```sql
globals
    string S = I2S(12) // 12
endglobals
```