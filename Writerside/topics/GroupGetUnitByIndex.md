# GroupGetUnitByIndex

```sql
native GroupGetUnitByIndex takes [[[group|group.md]]] whichGroup, [[[integer|integer.md]]] index returns [[[unit|unit.md]]]
```

Возвращает [юнита](unit.md) под определённым индексом из [группы](group.md). Индексация начинается с нуля.

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint(GetUnitName(GroupGetUnitByIndex([[[null|null.md]]], [[[null|null.md]]]))) // Безопасна при работе с [[[null|null.md]]]
    
    call [[[GroupAddUnit|GroupAddUnit.md]]](g, CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0))
    call [[[GroupAddUnit|GroupAddUnit.md]]](g, CreateUnit(Player(0), 'hfoo', 0, 0, 0))
    call ConsolePrint(GetUnitName(GroupGetUnitByIndex(g, 1))) // Footman
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```