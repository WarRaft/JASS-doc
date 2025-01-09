# SelectUnit

<secondary-label ref="1.0"/>

```sql
native SelectUnit takes unit whichUnit, boolean flag returns nothing
```

В зависимости от `flag` добавляет или удаляет [юнита](unit.md) из выбора игрока.

Игнорирует мёртвых, удалённых и [юнитов](unit.md), помеченных как не выделяемые с помощью [](aloc.md)
или [](SetUnitSelectable.md).

```sql
function onGameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call SelectUnit([[[null|null.md]]], true) // Безопасна при работе с [[[null|null.md]]]
    call SelectUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0), true)
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function onGameStart)
endfunction
```