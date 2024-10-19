# R2SW

```sql
native R2SW takes [[[real|real.md]]] r, [[[integer|integer.md]]] width, [[[integer|integer.md]]] precision returns [[[string|string.md]]]
```

Преобразует [](real.md) в форматированную [строку](string.md) ипользуя следующие параметры:

`width`
: Результирующая длинна строки. Если получившаяся строка меньше `width`, то она будет дополнена пробелами до
необходимого размера.

`precision`
: Позиция знака после точки, на котором произойдёт округление.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint(R2SW(.28, 0, 0)) // 0.0
    call ConsolePrint(R2SW(.28, 0, 1)) // 0.3
    call ConsolePrint(R2SW(.28, 0, 2)) // 0.28
    call ConsolePrint(R2SW(.28, 0, 3)) // 0.280
endfunction
```

Допустимо передать в `precision` отрицательное число. В этом случае, если значение дробной части имеет не более шести
знаков, оно будет выведено как есть. Иначе поведение будет эквивалентно значению `precision` равным `6`.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint(R2SW(3, 0, -1)) // 3.0
    call ConsolePrint(R2SW(.1 + .2, 0, -1)) // 0.3
    call ConsolePrint(R2SW(7 / 9., 0, -100500)) // 0.777778
    call ConsolePrint(R2SW(1123456/1000000., 0, -1)) // 1.123456
endfunction
```

При любых параметрах к числу будет добавлен `.0`, но дополнение пробелами произойдёт до его добавления.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint("|"+R2SW(3, 2, 0)+"|") // | 3.0|
    call ConsolePrint("|"+R2SW(3, 2, 1)+"|") // |3.0|
endfunction
```
