# Математика

Набор функций для работы с числами и расчёта всякого.

## Округление

- Round
    - [](MathRound.md)
    - [](MathRealRound.md)

## Сравнение

- Min
    - [](MathRealMin.md)
    - [](MathIntegerMin.md)

```sql
// Возможно опишу их позже.
native MathRealMax takes real a, real b returns real
native MathIntegerMax takes integer a, integer b returns integer

native MathRealClamp takes real value, real min, real max returns real
native MathIntegerClamp takes integer value, integer min, integer max returns integer

native MathIntegerSign takes integer i returns integer
native MathRealSign takes real r returns integer

native MathRealAbs takes real r returns real
native MathIntegerAbs takes integer i returns integer

native MathRealLog takes real r returns real
native MathIntegerLog takes integer i returns real

native MathRealModulo takes real dividend, real divisor returns real
native MathIntegerModulo takes integer dividend, integer divisor returns integer

native MathRealFloor takes real r returns real

native MathRealCeil takes real r returns real

native MathRealLn takes real r returns real

native MathRealLerp takes real a, real b, real t returns real

native MathIntegerLn takes integer i returns real
```