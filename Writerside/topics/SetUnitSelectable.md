# SetUnitSelectable

```sql
native SetUnitSelectable takes [[[unit|unit.md]]] whichUnit, boolean selectable returns nothing
```

Делает [юнита](unit.md) невыделяемым. Не влияет на возможность указать в качестве цели.

```sql
function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call SetUnitSelectable([[[null|null.md]]], true) // Безопасна при работе с [[[null|null.md]]]
    call SetUnitSelectable(CreateUnit(Player(0), 'hfoo', 0, 0, 0), false)
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```