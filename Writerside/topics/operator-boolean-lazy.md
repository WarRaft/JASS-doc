# Ленивое вычисление

Рассмотрим поближе совокупную таблицу операторов [](and.md) и [](or.md):

| _a_   | _b_   | _a_ `and` _b_ | _a_ `or` _b_ |
|-------|-------|---------------|--------------|
| true  | true  |               | true         |
| true  | false | false         | true         |
| false | true  | false         | true         |
| false | false | false         |              |

Как видите, вне зависимости от второго аргумента результат не меняется. Посему интерпретатор в таких случаях не считает
второе выражение. В этом легко убедиться передав вторым выражением функцию:

```sql
function A takes nothing returns boolean
    call ConsolePrint("Это сообщение не будет показано.")
    return false
endfunction

function main takes nothing returns nothing
    if true or A() then
        call ConsolePrint("Это сообщение будет показано.")
    endif
endfunction
```

## Минутка рукожопости

В любом другом языке программирования выполнив эквивалент `false and true or true` вы получите `true` или его числовое
представление в виде `1`. Но выполнив такой код в игре вы сильно удивитесь и можете заподозрить автора сей статьи во
всяком.

```sql
if false and true or true then
    call ConsolePrint("true")
else
    call ConsolePrint("false")
endif
```

Разгадка сего действия проста - если первым аргументом функции `and` был передан `false` то игра перестаёт считать
выражение и экстренно возвращает `false`.

> При этом неважно, будет получен `false` как значение литерала, из переменной
> или в результате выполнения функции.

Исправить это можно с помощью [скобок](expressions.md#parens):

```sql
if (false and true) or true then
    call BJDebugMsg("true")
else
    call BJDebugMsg("false")
endif
```