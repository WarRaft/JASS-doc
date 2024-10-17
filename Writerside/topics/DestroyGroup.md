# DestroyGroup

```sql
native DestroyGroup takes [[[group|group.md]]] whichGroup returns [[[nothing|nothing.md]]]
```

Создаёт объект типа [](group.md).

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    [[[local|local.md]]] [[[group|group.md]]] g = [[[CreateGroup|CreateGroup.md]]]()
    // ...
    call DestroyGroup(g)
    set g = null
endfunction
```

> При удалении память не освобождается, а помечается как доступная к переиспользованию. Используйте [](GroupClear.md)
> если хотите принудительно освободить память. 