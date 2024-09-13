# Операторы

## Присваивание {id="assign"}

Сохранение значения второго операнда в объект, указанный первым операндом.

```sql
globals
    boolean A = true
endglobals
```

## Отрицание {id="negation"}

Логическое [отрицание](not.md) - унарная операция результатом которой является значение, противоположное
исходному.

```sql
globals
    boolean A = not false // true
endglobals
```

## Равенство {id="equality"}

Оператор равенства `==` возвращает значение [](true.md), если его операнды равны. В противном случае
возвращается [](false.md).

```sql
globals
    boolean A = true == false // false
endglobals
```

## Неравенство {id="inequality"}

Оператор неравенства `!=` возвращает значение [](true.md), если его операнды не равны. В противном случае
возвращается [](false.md).

```sql
globals
    boolean A = true != false // true
endglobals
```

## И {id="and"}

Логическое [И](and.md) - операция, которая возвращает [](true.md) если оба операнда равны [](true.md).
В противном случае возвращается [](false.md).

```sql
globals
    boolean A = true and false // false
endglobals
```

## ИЛИ {id="or"}

Логическое [ИЛИ](or.md) - операция, которая возвращает [](true.md) если один из операндов
равен [](true.md). В противном случае возвращается [](false.md).

```sql
globals
    boolean A = true or false // true
endglobals
```