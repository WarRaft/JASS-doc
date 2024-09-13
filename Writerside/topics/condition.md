# Условия

<show-structure for="chapter,procedure" depth="3"/>

[Ветвление](https://w.wiki/9kCH) это операция, применяющаяся в случаях, когда выполнение или невыполнение некоторого
набора команд должно зависеть от выполнения или невыполнения некоторого условия.

## if {id="if"}

Базовый и единственный оператор ветвления.

```sql
if A then
    // этот блок выполнится, если A истинно
endif
```

## else {id="else"}

Необязательный блок, который может существовать только в единственном числе:

```sql
if A then
    // этот блок выполнится если A истинно
else
    // этот блок выполнится если A ложно
endif
```

## elseif {id="elseif"}

Необязательный блок, количество которых неограниченно:

```sql
if A then
    // этот блок выполнится если A истинно
elseif B then
    // этот блок выполнится если A ложно и B истинно
elseif C then
    // этот блок выполнится если A ложно, B ложно и C истинно
else
    // этот блок выполнится если A ложно, B ложно и C ложно
endif
```

## Условие {id="condition"}

В условии может быть всё что угодно, что можно присвоить переменной имеющей [](boolean.md):

```sql
function IsPositive takes integer i returns boolean
    return i >= 0
endfunction

function main takes nothing returns nothing
    local boolean A = true // логический литерал
    local boolean B = IsPositive(3) // результат выполнения [[[функции|function.md]]]
    local boolean C = 1 != 5 != not true // [[[выражение|expressions.md]]]

	if A then
		// этот блок выполнится если A истинно
	elseif B then
		// этот блок выполнится если A ложно и B истинно
	elseif C then
		// этот блок выполнится если A ложно, B ложно и C истинно
	else
		// этот блок выполнится если A ложно, B ложно и C ложно
	endif
endfunction
```