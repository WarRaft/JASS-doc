# Аргументы

Функции могут иметь [параметры](https://w.wiki/9pwD) - специальные переменные, которые являются частью сигнатуры
функции. Когда у функции есть параметры, вы можете предоставить ей конкретные значения этих параметров.

> Технически конкретные значения называются аргументами, но такое разделение, как ни парадоксально, вносит много
> путаницы.
> Поэтому здесь и далее термины [параметр](https://w.wiki/9vig) и [аргумент](https://w.wiki/8NLF) будут использованы как
> взаимозаменяемые для обозначения либо переменных в определении функции, либо конкретных
> значений, передаваемых при вызове функции.

```sql
function A takes string B, string C returns nothing // Объявление функции с именем A, которая принимает две строки B и C
    ConsolePrint(B + " " + C) // Делаем конкатенацию строк и выводим результат в консоль
endfunction

function main takes nothing returns nothing
    call A("Продам", "гараж") // Вызываем функцию A и передаём ей две строки аргументами
endfunction
```

## Порядок вычисления {id="order"}

Аргументы вычисляются в том порядке, в котором были объявлены.

```SQL
function A takes string B returns string
    call ConsolePrint(B)
    return B
endfunction

function C takes string D, string E returns nothing
endfunction

function main takes nothing returns nothing
    call C(A("1"), A("2")) // 12
endfunction
```