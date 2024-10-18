# ForGroup

```sql
native ForGroup takes [[[group|group.md]]] whichGroup, [[[code|code.md]]] callback returns [[[nothing|nothing.md]]]
```

Применяет функцию для каждого [юнита](unit.md) в [группе](group.md).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function forGroupIterator takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint(GetUnitName([[[GetEnumUnit|GetEnumUnit.md]]]()))
endfunction

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ForGroup([[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]] 
    call GroupAddUnit(g, CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0))
    call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0))
    call ForGroup(g, function forGroupIterator)
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```