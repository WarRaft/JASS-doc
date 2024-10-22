# Cos

```sql
native Cos takes [[[real|real.md]]] radians returns [[[real|real.md]]]
```

Возвращает [косинус](https://w.wiki/9ot7) угла. Принимает угол в [радианах](https://w.wiki/7YCS).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](Cos(3.1415))) // -1.000
endfunction
```