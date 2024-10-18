# GroupEnumUnitsInRect

```sql
native GroupEnumUnitsInRect takes [[[group|group.md]]] whichGroup, rect whichRect, [[[boolexpr|boolexpr.md]]] filter returns [[[nothing|nothing.md]]]
```

Добавляет в группу [юнитов](unit.md), находящихся в пределах прямоугольника `whichRect`.

Не учитывает физический размер [юнита](unit.md) и работает с его координатами.

```sql
globals
    group g = [[[CreateGroup|CreateGroup.md]]]()
    rect r // rect не инициализируется в блоке globals
endglobals

function gameStart takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call GroupEnumUnitsInRect([[[null|null.md]]], [[[null|null.md]]], [[[null|null.md]]]) // Безопасна при работе с [[[null|null.md]]]

    call CreateUnit(Player(0), '[[[uloc|aloc.md]]]', 0, 0, 0) // Игнорирует [[[aloc|aloc.md]]]
    call GroupEnumUnitsInRect(g, r, [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 0

    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call KillUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0)) // Добавляет мёртвых юнитов
    call RemoveUnit(CreateUnit(Player(0), 'hfoo', 0, 0, 0)) // Не добавляет удалённых юнитов
    call GroupEnumUnitsInRect(g, r, [[[null|null.md]]])
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 3
    
    call CreateUnit(Player(0), 'hfoo', 0, 0, 0)
    call GroupEnumUnitsInRect(g, r, [[[null|null.md]]]) // Не очищает группу перед вызовом
    call ConsolePrint([[[I2S|I2S.md]]]([[[GroupGetCount|GroupGetCount.md]]](g))) // 4
endfunction

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    set r = Rect(-100, -100, 100, 100)
    call TimerStart(CreateTimer(), 0, false, function gameStart)
endfunction
```