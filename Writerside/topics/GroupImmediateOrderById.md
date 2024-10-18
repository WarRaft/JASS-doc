# GroupImmediateOrderById

```sql
native GroupImmediateOrderById takes [[[group|group.md]]] whichGroup, [[[integer|integer.md]]] orderId returns [[[boolean|boolean.md]]]
```

<include from="GroupImmediateOrder.md" element-id="description"></include>

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupImmediateOrderById([[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    loop
        exitwhen GroupGetCount(g) >= 20
        call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0)) 
    endloop
    
    if GroupImmediateOrderById(g, 0xd0019) then // holdposition
        call ConsolePrint("1")
    else 
        call ConsolePrint("0")
    endif
    
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```