# and

Логическое [И](https://w.wiki/9tF2), оно же [конъюнкция](https://w.wiki/9tF2) определяется оператором `and`.
Возвращает [](true.md) только в том случае, когда оба аргумента равны [](true.md). В остальных случаях
возвращает [](false.md).

| _a_   | _b_   | _a_ `and` _b_ |
|-------|-------|---------------|
| true  | true  | true          |
| true  | false | false         |
| false | true  | false         |
| false | false | false         |

В [булевой алгебре](https://w.wiki/9XPW) рассматривается как минимальное значение операндов:

| _a_ | _b_ | _a_ `and` _b_ |
|-----|-----|---------------|
| 1   | 1   | 1             |
| 1   | 0   | 0             |
| 0   | 1   | 0             |
| 0   | 0   | 0             |

```sql
globals
    boolean A = true and false // false
endglobals
```
