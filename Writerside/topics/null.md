# null

<show-structure for="chapter,procedure" depth="3"/>

Специально обученный ноль, под который выделено ключевое слово `null`.

## boolean {id="boolean"}

`null` нельзя явно присвоить переменной или вернуть из функции. Допустимо передать его [аргументом](arguments.md) где он
будет преобразован в [](false.md).

```sql
function A takes boolean B returns nothing
    // local boolean C = null // Ошибка! Нельзя явно присваивать null переменным с типом [[[boolean|boolean.md]]]

    if B == true then
        // Этот блок не сработает, так как [[[true|true.md]]] это единица
        call ConsolePrint("true\n")
    endif

    if B == false then
        // Этот блок сработает, так как [[[false|false.md]]] это ноль
        call ConsolePrint("false\n")
    endif

    if B == null then
        // Этот блок сработает, так как null это ноль
        call ConsolePrint("null\n")
    endif
endfunction

function main takes nothing returns nothing
    call A(null) // При передаче null [[[аргументом|arguments.md]]] он будет превращён в [[[false|false.md]]]
endfunction
```

```sql
function A takes nothing returns boolean
    // return null // Ошибка! Нельзя явно указывать null возвращая [[[boolean|boolean.md]]]
    return false
endfunction
```


