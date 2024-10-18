# GroupRemoveUnit

```sql
native GroupRemoveUnit takes [[[group|group.md]]] whichGroup, [[[unit|unit.md]]] whichUnit returns nothing
```

Удаляет [юнита](unit.md) из [группы](group.md).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    local unit u = CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0)  // Не игнорирует [[[aloc|aloc.md]]]  
    
    call [[[GroupAddUnit|GroupAddUnit.md]]](g, u)
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 1 
    
    call GroupRemoveUnit(g, [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 1
    
    call GroupRemoveUnit(g, u)
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 0
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```