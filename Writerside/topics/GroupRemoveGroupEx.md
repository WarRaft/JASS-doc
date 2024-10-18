# GroupRemoveGroupEx

```sql
native GroupRemoveGroupEx takes [[[group|group.md]]] destGroup, [[[group|group.md]]] sourceGroup returns [[[integer|integer.md]]]
```

Удаляет [юнитов](unit.md) содержащихся в группе `sourceGroup` из [группы](group.md) `destGroup`. Возвращает
количество удалённых.

```sql
globals
    group destGroup = [[[CreateGroup|CreateGroup.md]]]()
    group sourceGroup = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    local unit u = CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0) // Не игнорирует [[[aloc|aloc.md]]]

    call GroupRemoveGroupEx([[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    call GroupAddUnit(destGroup, u) 
    call GroupAddUnit(sourceGroup, u)
    
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](destGroup))) // 1
    
    call ConsolePrint([[[I2S|I2S.md]]](GroupRemoveGroupEx(destGroup, sourceGroup))) // 1
    call ConsolePrint([[[I2S|I2S.md]]](GroupRemoveGroupEx(destGroup, sourceGroup))) // 0
    
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](destGroup))) // 1
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```