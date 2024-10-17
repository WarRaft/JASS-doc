# GroupGetCount

```sql
native GroupGetCount takes [[[group|group.md]]] whichGroup returns [[[integer|integer.md]]]
```

Возвращает количество [юнитов](unit.md) в [группе](group.md).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes nothing returns nothing
    local unit u
    
    call ConsolePrint(I2S([[[GroupGetCount|GroupGetCount.md]]]([[[null|null.md]]]))) // Безопасна для [[[null|null.md]]]
    
    call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0))
    call GroupAddUnit(g, CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0)) // Не игнорирует [[[aloc|aloc.md]]]
    
    set u = CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call [[[GroupAddUnit|GroupAddUnit.md]]](g, u)
    call KillUnit(u) // Считает мёртвых юнитов
    
    set u = CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call [[[GroupAddUnit|GroupAddUnit.md]]](g, u)
    call RemoveUnit(u) // Считает удалённых юнитов

    call ConsolePrint(I2S([[[GroupGetCount|GroupGetCount.md]]](g))) // 4
    
    set u = null
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```