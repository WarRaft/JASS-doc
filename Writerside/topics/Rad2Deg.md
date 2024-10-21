# Rad2Deg

```sql
native Rad2Deg takes [[[real|real.md]]] radians returns [[[real|real.md]]]
```

Преобразует угол из [радиан](https://w.wiki/7YCS) в [градусы](https://w.wiki/98yP).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](Rad2Deg(3.141592)))  // 180.000
endfunction
```