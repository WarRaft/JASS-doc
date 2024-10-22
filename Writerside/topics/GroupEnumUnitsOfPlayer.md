# GroupEnumUnitsOfPlayer

```sql
native GroupEnumUnitsOfPlayer takes [[[group|group.md]]] whichGroup, player whichPlayer, [[[boolexpr|boolexpr.md]]] filter returns [[[nothing|nothing.md]]]
```

Добавляет в группу [юнитов](unit.md), принадлежащих определённому игроку.

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupEnumUnitsOfPlayer([[[null|null.md]]], [[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    call CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0) // Не игнорирует [[[aloc|aloc.md]]]
    call GroupEnumUnitsOfPlayer(g, Player(0), [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 1

    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call KillUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0)) // Добавляет мёртвых юнитов
    call RemoveUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0)) // Добавляет удалённых юнитов
    call GroupEnumUnitsOfPlayer(g, Player(0), [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 4
    
    call GroupEnumUnitsOfPlayer(g, Player(1), [[[null|null.md]]]) // Очищает группу перед вызовом
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 0
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```

Добавление удалённых юнитов связано с процессом удаления юнитов игрой, которая ждёт завершения внутриигрового цикла
перед полным удалением юнита во избежание всякого.

Если отложить действие, то игра успешно удалит [юнита](unit.md) и он добавлен не будет.

```sql
globals
    group g = CreateGroup()
endglobals

function timerCallback takes nothing returns nothing
    call GroupEnumUnitsOfPlayer(g, Player(0), null)
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 0
endfunction

function gameStart takes nothing returns nothing
    call RemoveUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0))
    call TimerStart(CreateTimer(), 0, false, function timerCallback)
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```