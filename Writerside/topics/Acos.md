# Acos

```sql
native Acos takes [[[real|real.md]]] x returns [[[real|real.md]]]
```

[Обратная](https://w.wiki/4UJD) функция для [](Cos.md). Возвращает угол
в [радианах](https://w.wiki/7YCS), [косинус](https://w.wiki/9ot7) которого
равен [аргументу](arguments.md).

- возвращает ноль для [аргумента](arguments.md) не входящего в диапазон `[-1, 1]`

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[R2S|R2S.md]]](Acos(0))) // 1.571
endfunction
```