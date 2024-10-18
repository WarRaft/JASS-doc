# GroupImmediateOrder

```sql
native GroupImmediateOrder takes [[[group|group.md]]] whichGroup, string orderName returns boolean
```

<snippet id="description">

Отдаёт [приказ](https://github.com/WarRaft/Order) сразу всей группе. Если приказ получил хоть один член группы,
возвращает [](true.md), в остальных случаях [](false.md).

</snippet>

Рекомендуется использовать версию с числовыми приказами - [](GroupImmediateOrderById.md).

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupImmediateOrder([[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    loop
        exitwhen GroupGetCount(g) >= 20
        call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0)) 
    endloop
    
    if GroupImmediateOrder(g, "holdposition") then
        call ConsolePrint("1")
    else 
        call ConsolePrint("0")
    endif
    
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```