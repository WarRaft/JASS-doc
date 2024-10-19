# Математика

Набор функций для работы с числами и расчёта всякого.

## Округление {id="rounding"}

- Round
    - [](MathRound.md)
    - [](MathRealRound.md)

## Сравнение {id="comparison"}

- Min
    - [](MathRealMin.md)
    - [](MathIntegerMin.md)
- Max
    - [](MathRealMax.md)
    - [](MathIntegerMax.md)
- Clamp
    - [](MathRealClamp.md)
    - [](MathIntegerClamp.md)
- Sign
    - [](MathRealSign.md)
    - [](MathIntegerSign.md)
- Abs
    - [](MathRealAbs.md)
    - [](MathIntegerAbs.md)

## Вычисление

```sql
// Возможно опишу их позже.

https://ru.stackoverflow.com/questions/734171/

native MathRealModulo takes real dividend, real divisor returns real
native MathIntegerModulo takes integer dividend, integer divisor returns integer

native MathRealLog takes real r returns real
native MathIntegerLog takes integer i returns real

native MathRealLn takes real r returns real
native MathIntegerLn takes integer i returns real

native MathRealFloor takes real r returns real

native MathRealCeil takes real r returns real

native MathRealLerp takes real a, real b, real t returns real


```