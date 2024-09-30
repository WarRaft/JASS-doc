# Математика

Набор функций для работы с числами и расчёта всякого.


```sql
// Возможно опишу их позже.

native R2SW takes real r, integer width, integer precision returns string

native S2I takes string s returns integer

native S2R takes string s returns real

native MathRealRound takes real r returns real


native MathRealFloor takes real r returns real

native MathRealCeil takes real r returns real

native MathRealAbs takes real r returns real

native MathRealLog takes real r returns real

native MathRealLn takes real r returns real

native MathRealModulo takes real dividend, real divisor returns real

native MathRealMin takes real a, real b returns real

native MathRealMax takes real a, real b returns real

native MathRealSign takes real r returns integer

native MathRealClamp takes real value, real min, real max returns real

native MathRealLerp takes real a, real b, real t returns real

native MathIntegerAbs takes integer i returns integer

native MathIntegerLog takes integer i returns real

native MathIntegerLn takes integer i returns real

native MathIntegerModulo takes integer dividend, integer divisor returns integer

native MathIntegerMin takes integer a, integer b returns integer
native MathIntegerMax takes integer a, integer b returns integer

native MathIntegerSign takes integer i returns integer

native MathIntegerClamp takes integer value, integer min, integer max returns integer

```