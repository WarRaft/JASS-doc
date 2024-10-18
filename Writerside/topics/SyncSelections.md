# SyncSelections

```sql
native SyncSelections takes nothing returns nothing
```

Синхронизирует данные о выбранных юнитах игроков. Может быть вызвана только в потоке, порождённом триггером.

```sql
function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call SyncSelections()
    // ...
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    local trigger t = CreateTrigger()
    call TriggerRegisterTimerEvent(t, 0, false)
    call TriggerAddAction(t, function gameStart)
    set t = null
endfunction
```

## Примеры {id="examples"}

- [](GroupEnumUnitsSelected.md)