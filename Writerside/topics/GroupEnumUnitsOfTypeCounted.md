# GroupEnumUnitsOfTypeCounted

```sql
native GroupEnumUnitsOfTypeCounted takes [[[group|group.md]]] whichGroup, [[[string|string.md]]] unitname, [[[boolexpr|boolexpr.md]]] filter, [[[integer|integer.md]]] countLimit returns nothing
```

Добавляет в группу [юнитов](unit.md), имеющих имя `unitname` указанное в колонке `name`
таблицы [Units/unitUI.slk](https://github.com/WarRaft/war3mpq/blob/main/extract/Units/unitUI.slk). Прекращает работу
когда размер группы достигает `countLimit`.

За исключением `countLimit` аналогична [](GroupEnumUnitsOfType.md).

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
    
    call GroupEnumUnitsOfTypeCounted(g, "footman", [[[null|null.md]]], 1)
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 3
   
    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
   
    call GroupEnumUnitsOfTypeCounted(g, "footman", [[[null|null.md]]], 1)
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 6
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```