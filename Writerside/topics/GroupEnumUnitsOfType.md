# GroupEnumUnitsOfType

```sql
native GroupEnumUnitsOfType takes [[[group|group.md]]] whichGroup, [[[string|string.md]]] unitname, [[[boolexpr|boolexpr.md]]] filter returns [[[nothing|nothing.md]]]
```

Добавляет в группу [юнитов](unit.md), имеющих имя `unitname` указанное в колонке `name`
таблицы [Units/unitUI.slk](https://github.com/WarRaft/war3mpq/blob/main/extract/Units/unitUI.slk).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupEnumUnitsOfType([[[null|null.md]]], [[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    call CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0) // Не игнорирует [[[aloc|aloc.md]]]
    call GroupEnumUnitsOfType(g, "[[[locust|aloc.md]]]", [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 1

    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call KillUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0)) // Добавляет мёртвых юнитов
    call RemoveUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0)) // Не добавляет удалённых юнитов
    call GroupEnumUnitsOfType(g, "footman", [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 3
  
    call GroupEnumUnitsOfType(g, "sorceress", [[[null|null.md]]]) // Очищает группу перед вызовом
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 0
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```