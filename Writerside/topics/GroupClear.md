# GroupClear

```sql
native GroupClear takes [[[group|group.md]]] whichGroup returns [[[nothing|nothing.md]]]
```

Удаляет всех юнитов из группы.

```sql
globals
    [[[group|group.md]]] g = [[[CreateGroup|CreateGroup.md]]]()
endglobals

function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    // ...
    call GroupClear(g)
endfunction
```