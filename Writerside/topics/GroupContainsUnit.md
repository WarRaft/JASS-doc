# GroupContainsUnit

```sql
native GroupContainsUnit takes [[[group|group.md]]] whichGroup, [[[unit|unit.md]]] whichUnit returns [[[boolean|boolean.md]]]
```

Проверяет, содержится ли [юнит](unit.md) в [группе](group.md).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    local unit u = CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0)
    local boolean b = GroupContainsUnit([[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]
    
    call [[[GroupAddUnit|GroupAddUnit.md]]](g, u)
    if GroupContainsUnit(g, u) then
        call ConsolePrint("[[[Юнит|unit.md]]] содержится в [[[группе|group.md]]]")
    else
        call ConsolePrint("[[[Юнит|unit.md]]] не содержится в [[[группе|group.md]]]")
    endif
  
    set u = null
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```