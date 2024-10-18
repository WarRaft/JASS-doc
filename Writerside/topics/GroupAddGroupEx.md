# GroupAddGroupEx

```sql
native GroupAddGroupEx takes [[[group|group.md]]] destGroup, [[[group|group.md]]] sourceGroup returns [[[integer|integer.md]]]
```

Добавляет [юнитов](unit.md) из [группы](group.md) `sourceGroup` в `destGroup`. Возвращает количество добавленных юнитов.

```sql
globals
    group destGroup = [[[CreateGroup|CreateGroup.md]]]()
    group sourceGroup = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupAddGroupEx([[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    call GroupAddUnit(sourceGroup, CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0)) // Не игнорирует [[[aloc|aloc.md]]]
    
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](destGroup))) // 0
    
    call ConsolePrint([[[I2S|I2S.md]]](GroupAddGroupEx(destGroup, sourceGroup))) // 1
    call ConsolePrint([[[I2S|I2S.md]]](GroupAddGroupEx(destGroup, sourceGroup))) // 0
    
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](destGroup))) // 1
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```