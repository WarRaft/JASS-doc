# R2S

```sql
native R2S takes [[[real|real.md]]] r returns [[[string|string.md]]]
```

Преобразует [вещественное число](real.md) в [строку](string.md).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint(R2S(.3)) // 0.300
endfunction
```