# GroupAddUnit

```sql
native GroupAddUnit takes [[[group|group.md]]] whichGroup, [[[unit|unit.md]]] whichUnit returns [[[nothing|nothing.md]]]
```

Добавляет [юнита](unit.md) в [группу](group.md).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupAddUnit(g, [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]] 
    call GroupAddUnit(g, CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0)) // Не игнорирует [[[aloc|aloc.md]]]
    call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0))

    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 2
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```