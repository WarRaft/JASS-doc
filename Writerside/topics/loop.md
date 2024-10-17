# Циклы

<show-structure for="chapter,procedure" depth="3"/>

[Цикл](https://w.wiki/9kNy) это конструкция позволяющая многократно исполнять определённый набор инструкций.

## loop {id="loop"}

Единственный тип цикла в игре.

```sql
loop
    // этот блок будет исполняться бесконечно
endloop
```

### exitwhen {id="exitwhen"}

Условие выхода из цикла. Можно вкладывать в [](condition.md#if).

```sql
loop
    // этот код исполнится
    exitwhen false
    // этот код исполнится
    exitwhen true
    // этот код не исполнится
endloop
```

## Вложенные циклы {id="nested"}

Вложенные циклы допустимы, оператор [](#exitwhen) завершит ближайший родительский цикл.

```sql
// Выводим таблицу умножения чисел от 1 до 9 включительно
function main takes nothing returns nothing
    local integer i = 0
    local integer j = 0
    loop
        set i = i + 1
        exitwhen i > 9
        set j = 0
        loop
            set j = j + 1
            if j > 9 then
                exitwhen true
            endif
        call ConsolePrint(I2S(i) + " * " + I2S(j) + " = " + I2S(i * j))
        endloop
    endloop
endfunction
```