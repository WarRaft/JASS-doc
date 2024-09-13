# not

Логическое [НЕ](https://w.wiki/88Li), оно же [инверсия](https://w.wiki/88Li) определяется оператором `not`. Возвращает
значение противоположное исходному.

| _a_   | `not` _a_ |
|-------|-----------|
| true  | false     |
| false | true      |

В [булевой алгебре](https://w.wiki/9XPW) просто происходит инверсия:

| _a_ | `not` _b_ |
|-----|-----------|
| 1   | 0         |
| 0   | 1         |

```sql
globals
    boolean A = not false // true
endglobals
```
