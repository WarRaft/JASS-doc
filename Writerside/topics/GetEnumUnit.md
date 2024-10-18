# GetEnumUnit

```sql
native GetEnumUnit takes nothing returns [[[unit|unit.md]]]
```

Функция, служащая для получения текущего [юнита](unit.md) при переборе [группы](group.md) с помощью
функции [](ForGroup.md).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function forGroupIterator takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint(GetUnitName(GetEnumUnit()))
endfunction

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]] 
    call GroupAddUnit(g, CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0))
    call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0))
    call [[[ForGroup|ForGroup.md]]](g, function forGroupIterator)
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```