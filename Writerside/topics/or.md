# or

Логическое [ИЛИ](https://w.wiki/9tFE), оно же [дизъюнкция](https://w.wiki/9tFE) определяется оператором `or`.
Возвращает [](true.md) если один из операндов равен [](true.md). В противном случае возвращается [](false.md).

| _a_   | _b_   | _a_ `or` _b_ |
|-------|-------|--------------|
| true  | true  | true         |
| true  | false | true         |
| false | true  | true         |
| false | false | false        |

В [булевой алгебре](https://w.wiki/9XPW) рассматривается как максимальное значение операндов:

| _a_ | _b_ | _a_ `or` _b_ |
|-----|-----|--------------|
| 1   | 1   | 1            |
| 1   | 0   | 1            |
| 0   | 1   | 1            |
| 0   | 0   | 0            |

```sql
globals
    boolean A = true or false // true
endglobals
```