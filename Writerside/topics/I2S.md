# I2S

```sql
native I2S takes [[[integer|integer.md]]] i returns [[[string|string.md]]]
```

Преобразует [целое число](integer.md) в [строку](string.md).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint(I2S(12)) // 12
endfunction
```