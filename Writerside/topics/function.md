# Функции

<show-structure for="chapter,procedure" depth="3"/>

Функции — это блоки кода, выполняющие определенные операции.

## main

Начальная точка исполнения, которая вызывается приблизительно на _70%_ загрузки карты и до её вызова запрещено
создавать игровые объекты.

```sql
function main takes nothing returns nothing
  // Код начнёт исполняться здесь и можно создавать игровые объекты за исключением фреймов.
endfunction
```

> В момент вызова `main` фреймы ещё не созданы, поэтому используйте таймер с нулевой задержкой.

## config

Функция исполняемая в лобби. В ней происходит установка игровых слотов и прочая предварительная настройка карты.

```sql
function main takes nothing returns nothing
  // Этот код будет выполнен в лобби.
endfunction
```

## Вызов функции

Функцию можно вызвать из другой функции только в том случае, если она объявлена ниже по коду.

```sql
function A takes nothing returns nothing
  call BJDebugMsg("Эта функция выведет этот текст в чат")
endfunction

function main takes nothing returns nothing // Эта функция будет вызвана интерпретатором
  call A() // Вызываем объявленную выше функцию A
endfunction
```

### Рекурсия

[Рекурсия](https://w.wiki/9q4Z) это вызов функции из самой себя.

```sql
function A takes integer B returns integer
	if B < 0 then
		return B
	endif
	return A(B - 1)
endfunction

function main takes nothing returns nothing
	call A(10)
endfunction
```

## Возвращаемое значение

Функции могут, но не обязаны возвращать значения. Для возврата значения используется ключевое слово `return`.

```sql
function A takes nothing returns integer // Объявляем функцию A которая возвращает значение типа integer
    return 5 // Возвращаем значение типа integer равное 5
endfunction
```

### nothing

Чтобы обозначить, что функция ничего не возвращает, используется ключевое слово `nothing`:

```sql
function main takes nothing returns nothing
  // Эта функция никому ничего не возвращает
endfunction
```

## Аргументы

Функции могут иметь [параметры](https://w.wiki/9pwD) - специальные переменные, которые являются частью сигнатуры
функции. Когда у функции есть параметры, вы можете предоставить ей конкретные значения этих параметров.

> Технически конкретные значения называются аргументами, но такое разделение, как ни парадоксально, вносит много
> путаницы.
> Поэтому здесь и далее термины [параметр](https://w.wiki/9vig) и [аргумент](https://w.wiki/8NLF) будут использованы как
> взаимозаменяемые для обозначения либо переменных в определении функции, либо конкретных
> значений, передаваемых при вызове функции.

```sql
function A takes string B, string C returns nothing // Объявление функции с именем A, которая принимает две строки B и C
    BJDebugMsg(B+" "+C) // Делаем конкатенацию строк и выводим результат в чат
endfunction

function main takes nothing returns nothing
    call A("Продам", "гараж") // Вызываем функцию A и передаём ей две строки аргументами
endfunction
```

> Если аргументов больше одного, то они вычисляются в обратном порядке, то бишь последний аргумент будет вычислен
> первым.

### ExecuteFunc

Функцию нельзя передать аргументом для вызова в другой функции. Чтоб решить эту проблему и дать возможность
преисполнится в своём познании в игру была добавлена интересная функция, которая вызывает другую функцию по её имени.

```SQL
native ExecuteFunc takes string funcName returns nothing
```

В обиходе до сих пор множество методик, которые используют её для мнимого ускорения кода. Если у вас есть мозг, и он вам
дорог, то не используйте эту функцию ни под каким предлогом. А всех тех, кто попытается переубедить вас в обратном
клеймите диверсантом и изгоняйте из вашего окружения.

### ExecuteCode

Отвечая на запросы трудящихся, в [UjAPI](https://unryzec.github.io/UjAPI) был реализован адекватный
аналог `ExecuteFunc`:
```SQL
native ExecuteCode takes code c returns nothing
```

Она использует тип [code](code.md), тем самым производя штатный вызов функции.

```SQL
function A takes code B returns nothing
    call ExecuteCode(B)
endfunction

function C takes nothing returns nothing
    //...
endfunction

function main takes nothing returns nothing
    call A(function C)
endfunction
```

> Если вам всё же понадобилась эта функция, то лучше перейти
> на [AngelScript](https://warraft.github.io/AngelScript-doc/about.html), где это и многое другое является частью самого
> языка.