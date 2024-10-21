# Deg2Rad

```sql
native Deg2Rad takes [[[real|real.md]]] degrees returns [[[real|real.md]]]
```

Преобразует угол из [градусов](https://w.wiki/98yP) в [радианы](https://w.wiki/7YCS).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](Deg2Rad(180)))  // 3.142
endfunction
```