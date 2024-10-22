# GroupEnumUnitsInRange

```sql
native GroupEnumUnitsInRange takes [[[group|group.md]]] whichGroup, [[[real|real.md]]] x, [[[real|real.md]]] y, [[[real|real.md]]] radius, [[[boolexpr|boolexpr.md]]] filter returns [[[nothing|nothing.md]]]
```

Добавляет в группу [юнитов](unit.md), находящихся на расстоянии `radius` от точки с координатами `x`,`y`.

Не учитывает физический размер [юнита](unit.md) и работает с его координатами.

```sql
globals
    [[[group|group.md]]] g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupEnumUnitsInRange([[[null|null.md]]], 0, 0, 1000, [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    call CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0) // Игнорирует [[[aloc|aloc.md]]]
    call GroupEnumUnitsInRange(g, 0, 0, 1000, [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 0

    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call KillUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0)) // Добавляет мёртвых юнитов
    call RemoveUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0)) // Не добавляет удалённых юнитов
    call GroupEnumUnitsInRange(g, 0, 0, 1000, [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 2
    
    call GroupEnumUnitsInRange(g, 1000, 1000, 100, [[[null|null.md]]]) // Очищает группу перед вызовом
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 0
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```