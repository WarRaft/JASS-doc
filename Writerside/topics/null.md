# null

<show-structure for="chapter,procedure" depth="3"/>

Специально обученный ноль, под который выделено ключевое слово `null`.

## boolean {id="boolean"}

- Для типа [](boolean.md запрещено явно присваивать переменной или возвращать из функции
- При передаче [аргументом](arguments.md) будет преобразован в [](false.md)

```sql
function A takes boolean B returns boolean
    // local boolean C = null // Ошибка! Нельзя явно присваивать [[[null|null.md]]] переменным с типом [[[boolean|boolean.md]]]

    if B == true then
        call ConsolePrint("Этот блок не сработает ибо [[[true|true.md]]] это единица")
    endif

    if B == false then
        call ConsolePrint("Этот блок сработает ибо [[[false|false.md]]] это ноль")
    endif

    if B == null then
        call ConsolePrint("Этот блок сработает ибо [[[null|null.md]]] это ноль")
    endif

    // return null // Ошибка! Нельзя явно указывать [[[null|null.md]]] возвращая [[[boolean|boolean.md]]]
    return false
endfunction

function main takes nothing returns nothing
    call A(null) // Передавая [[[null|null.md]]] как [[[аргумент|arguments.md]]] он будет превращён в [[[false|false.md]]]
endfunction
```

## integer {id="integer"}

- Для типа [](integer.md) запрещено явно присваивать переменной или возвращать из функции
- При передаче [аргументом](arguments.md) будет преобразован ноль

```sql
function A takes integer B returns integer
    // local integer C = null // Ошибка! Нельзя явно присваивать null переменным с типом [[[integer|integer.md]]]

    call ConsolePrint([[[I2S|I2S.md]]](B)) // В консоль выведется ноль

    if B == 0 then
        call ConsolePrint("Этот блок сработает ибо [[[null|null.md]]] приведён к нулю")
    endif

    if B == null then
        call ConsolePrint("Этот блок сработает ибо [[[null|null.md]]] приведён к нулю")
    endif
    
    // return null // Ошибка! Нельзя явно указывать [[[null|null.md]]] возвращая [[[integer|integer.md]]]
    return 0
endfunction

function main takes nothing returns nothing
    call A(null) // Передавая [[[null|null.md]]] как [[[аргумент|arguments.md]]] он будет превращён в ноль
endfunction
```

## real {id="real"}

- Для типа [](real.md) запрещено явно присваивать переменной или возвращать из функции
- При передаче [аргументом](arguments.md) будет преобразован ноль

```sql
function A takes real B returns real
    // local real C = null // Ошибка! Нельзя явно присваивать null переменным с типом [[[real|real.md]]]

    call ConsolePrint(R2S(B)) // В консоль выведется ноль

    if B == 0.0 then
        call ConsolePrint("Этот блок сработает ибо [[[null|null.md]]] приведён к нулю")
    endif

    if B == null then
        call ConsolePrint("Этот блок сработает ибо [[[null|null.md]]] приведён к нулю")
    endif

    // return null // Ошибка! Нельзя явно указывать [[[null|null.md]]] возвращая [[[real|real.md]]]
    return 0.0
endfunction

function main takes nothing returns nothing
    call A(null) // Передавая [[[null|null.md]]] как [[[аргумент|arguments.md]]] он будет превращён в ноль
endfunction
```

## string {id=string}

- Для [строк](string.md) разрешено явное присвоение переменной или возврат из функции
- При передаче [аргументом](arguments.md) будет передан без преобразования
- Запрещено явно использовать при конкатенации

```sql
function A takes string B returns string
    local string C = null // Разрешено явно присваивать [[[null|null.md]]] переменным с типом [[[string|string.md]]]

    call ConsolePrint(B + C) // В консоль выведется пустая строка
   
    if B == null then
        call ConsolePrint("Этот блок сработает так как передан [[[null|null.md]]]")
    endif

    if B == "" then
        call ConsolePrint("Этот блок не сработает из-за особенностей [[[таблицы строк|string.md#table]]]")
    endif
    
    // call ConsolePrint(null + "Ошибка! Нельзя явно использовать [[[null|null.md]]] при конкатенации")

    return null // Разрешено явно указывать [[[null|null.md]]] возвращая [[[string|string.md]]]
endfunction

function main takes nothing returns nothing
    call A(null) // Передавая [[[null|null.md]]] как [[[аргумент|arguments.md]]] он будет передан как [[[null|null.md]]]
endfunction
```

## handle

- Для типов наследующих [](handle.md) разрешено явное присвоение переменной или возврат из функции
- При передаче [аргументом](arguments.md) будет передан без преобразования

```sql
function A takes location B returns location
    local location C = null // Разрешено явно присваивать [[[null|null.md]]] переменным с типом наследующим [[[handle|handle.md]]]

    call ConsolePrint([[[I2S|I2S.md]]](GetHandleId(B))) // В консоль будет выведен ноль, так как объект не создан

    if B == null then
        call ConsolePrint("Этот блок сработает так как передан [[[null|null.md]]]")
    endif

    return null // Разрешено явно указывать [[[null|null.md]]] возвращая тип наследующий [[[handle|handle.md]]]
endfunction

function main takes nothing returns nothing
    call A(null) // Передавая [[[null|null.md]]] как [[[аргумент|arguments.md]]] он будет передан как [[[null|null.md]]]
endfunction
```