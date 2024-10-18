# GroupTargetOrderById

```sql
native GroupTargetOrderById takes [[[group|group.md]]] whichGroup, [[[integer|integer.md]]] orderId, [[[widget|widget.md]]] targetWidget returns [[[boolean|boolean.md]]]
```

<include from="GroupImmediateOrder.md" element-id="description"></include>

Если в группе более 12 [юнитов](unit.md), приказ получат только первые 12.

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupTargetOrderById([[[null|null.md]]], [[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]
  
    loop
        exitwhen GroupGetCount(g) >= 20
        call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0)) 
    endloop
    
    if GroupTargetOrderById(g, 0xd0012, CreateUnit(Player(0), 'hfoo', 1000, 1000, 0)) then // move
        call ConsolePrint("1")
    else 
        call ConsolePrint("0")
    endif
    
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```