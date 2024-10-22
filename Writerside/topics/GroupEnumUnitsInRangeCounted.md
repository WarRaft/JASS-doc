# GroupEnumUnitsInRangeCounted

```sql
native GroupEnumUnitsInRangeCounted takes [[[group|group.md]]] whichGroup, [[[real|real.md]]] x, [[[real|real.md]]] y, [[[real|real.md]]] radius, [[[boolexpr|boolexpr.md]]] filter, [[[integer|integer.md]]] countLimit returns [[[nothing|nothing.md]]]
```

Добавляет в группу [юнитов](unit.md), находящихся на расстоянии `radius` от точки с координатами `x`,`y`.
Прекращает работу когда размер группы достигает `countLimit`.

Не учитывает физический размер [юнита](unit.md) и работает с его координатами.

За исключением `countLimit` аналогична [](GroupEnumUnitsInRange.md).

> Функкция не учитывает `countLimit`.
>
{style="warning"}

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    
    call GroupEnumUnitsInRangeCounted(g, 0, 0, 1000, [[[null|null.md]]], 1)
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 3
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```