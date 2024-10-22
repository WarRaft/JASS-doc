# GroupEnumUnitsSelected

```sql
native GroupEnumUnitsSelected takes [[[group|group.md]]] whichGroup, player whichPlayer, [[[boolexpr|boolexpr.md]]] filter returns [[[nothing|nothing.md]]]
```

Добавляет в группу [юнитов](unit.md), выбранных определённым игроком.

Во избежание десинхронихации необходимо предварительно вызвать [](SyncSelections.md).

Так как механикой игры или при помощи [](SelectUnit.md) невозможно выделить мёртвых или невыделяемых [юнитов](unit.md),
функция с ними не работает.

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupEnumUnitsSelected([[[null|null.md]]], [[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    call [[[SelectUnit|SelectUnit.md]]](CreateUnit(Player(0), 'hfoo', 0, 0, 0), true)
    call [[[SyncSelections|SyncSelections.md]]]()
    call GroupEnumUnitsSelected(g, Player(0), [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 1
   
    call ClearSelection()
    call [[[SyncSelections|SyncSelections.md]]]()
    call GroupEnumUnitsSelected(g, Player(0), [[[null|null.md]]]) // Очищает группу перед вызовом
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 0
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    local trigger t = CreateTrigger()
    call TriggerRegisterTimerEvent(t, 0, false)
    call TriggerAddAction(t, function gameStart)
    set t = null
endfunction
```