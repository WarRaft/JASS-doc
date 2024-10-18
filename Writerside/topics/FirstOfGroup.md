# FirstOfGroup

```sql
native FirstOfGroup takes [[[group|group.md]]] whichGroup returns [[[unit|unit.md]]]
```

Возвращает первого юнита из группы. Если группа пуста возвращает [](null.md).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint(GetUnitName(FirstOfGroup([[[null|null.md]]]))) // Безопасна при работе с [[[null|null.md]]]
    
    call [[[GroupAddUnit|GroupAddUnit.md]]](g, CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0))
    call [[[GroupAddUnit|GroupAddUnit.md]]](g, CreateUnit(Player(0), 'hfoo', 0, 0, 0))
    call ConsolePrint(GetUnitName(FirstOfGroup(g))) // Locust
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```