# Преобразования

## Запись {id="literal"}

При разборе кода тип числа определяется его записью.

```sql
globals
    integer A = 012 // [[[Восьмеричная запись|integer.md#radix8]]]
    integer B = 10 // [[[Десятичная запись|integer.md#radix10]]]
    integer C = 0xA // [[[Шестнадцатеричная запись|integer.md#hex]]]
    integer D = 'A' // [[[Равкод|integer.md#rawcode]]]

    real E = 1.1 // [[[Полная запись|real.md]]]
    real F = .1 // Опущенный ноль в начале
    real G = 1. // Опущенный ноль в конце
endglobals
```

## real {id="real"}

Переменным типа [](real.md) можно присвоить любое [](integer.md) значение.

```sql
function main takes nothing returns nothing
    local real A = 012 // 10.000
    local real B = 10  // 10.000
    local real C = 0xA // 10.000
    local real D = 'A' // 65.000
    
    local integer E = 10
    local real F = E // 10.000 
endfunction
```

## integer {id="integer"}

Для того чтоб присвоить [](integer.md) значение типа [](real.md) его нужно предварительно преобразовать одной из
функций.

```sql
globals
    integer A = [[[R2I|R2I.md]]](3.9) // 3
    integer B = [[[MathRound|MathRound.md]]](-3.5) // -4 
endglobals
```

## Математика {id="math"}

При выполнении математических операций результат будет того же типа, что и операнды. Если операция выполняется
между [](integer.md) и [](real.md), то результат всегда будет [](real.md).

```sql
function main takes nothing returns nothing
    local real A = 5/2  // 2.000
    local real B = 5/2. // 2.500
endfunction
```
