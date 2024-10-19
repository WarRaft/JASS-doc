# integer

<show-structure for="chapter,procedure" depth="3"/>

[Целые числа](https://w.wiki/9eVi) представлены в диапазоне от `-2,147,483,648` до `2,147,483,647`.

> Целые числа реализованы в игре как [int32](https://learn.microsoft.com/en-us/cpp/cpp/data-type-ranges).

## Восьмеричная запись {id="radix8"}

Запись числа в [восьмеричной](https://w.wiki/9X3$) системе счисления начинается с ноля:

```SQL
globals
    integer a = 07
    integer b = -012
endglobals
```

## Десятичная запись {id="radix10"}

Запись числа в [восьмеричной](https://w.wiki/8W59) системе счисления начинается с ноля:

```SQL
globals
    integer a = 100500
    integer b = -100500
endglobals
```

## Шестнадцатеричная запись {id="hex"}

Запись в [шестнадцатеричной](https://w.wiki/4BNZ) системе счисления начинается с **0x** __(ноль икс)__ или c **$**:

```SQL
globals
    integer a = 0xFF
    integer b = -$ff
endglobals
```

Запись регистронезависима. То бишь большие и маленькие буквы равноправны.

## Равкоды {id="rawcode"}

Знаки между одинарными кавычками в простонародии зовутся [равкодами](https://xgm.guru/p/wc3/rawcode).

```SQL
globals
    integer a = 'a'
    integer b = -'abcd'
endglobals
```

Допускается использовать один или четыре символа.

> Для удобства использования был написан удобный [конвертер](https://nazarpunk.github.io/warodel/rawcode/).

> Особо одарённые
> причисляют их к [ASCII](https://w.wiki/7hvN), другие к [ISO 8859-1](https://w.wiki/9jeo), ну а третьи
> к [UTF-8](https://ru.wikipedia.org/wiki/UTF-8). На самом деле это строковое представление байт, которое более подробно
> описано в [статье](https://xgm.guru/p/wc3/rawcode).

## Приведение типа {id="cast"}

### real {id="real"}

Чтоб присвоить `integer` значение типа [](real.md), его нужно предварительно преобразовать одной из
функций.

```sql
globals
    integer A = [[[R2I|R2I.md]]](3.9) // 3
    integer B = [[[MathRound|MathRound.md]]](-3.5) // -4 
endglobals
```

### string {id="string"}

Для получения `integer` из строки необходимо использовать функцию [](S2I.md).

```sql
globals
    integer A = [[[S2I|S2I.md]]](" -012 ") // -12 
endglobals
```


