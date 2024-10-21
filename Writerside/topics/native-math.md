# Математика

Набор функций для работы с числами и расчёта всякого.

## Округление {id="rounding"}

- Round
    - [](MathRound.md)
    - [](MathRealRound.md)
- [](MathRealCeil.md)
- [](MathRealFloor.md)

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

## Вычисление {id="compute"}

- [](Pow.md)
- [](SquareRoot.md)
- Modulo
    - [](MathRealModulo.md)
    - [](MathIntegerModulo.md)
- [](MathRealLerp.md)

## Геометрия {id="geometry"}

- Конвертация углов
    - [](Deg2Rad.md)
    - [](Rad2Deg.md)
- Полярное смещение
    - [](MathPointProjectionX.md)
    - [](MathPointProjectionY.md)
- [](MathAngleBetweenPoints.md)
- [](MathDistanceBetweenPoints.md)

## Данные игры {id="game"}

- [](GetAxisZ.md)

```sql

https://w.wiki/9ot7

native Sin takes real radians returns real
native MathSinDeg takes real r returns real
// Expect values between -1 and 1...returns 0 for invalid input
native Asin takes real y returns real

native Cos takes real radians returns real
native MathCosDeg takes real r returns real
// Expect values between -1 and 1...returns 0 for invalid input
native Acos takes real x returns real

native Tan takes real radians returns real
native MathTanDeg takes real r returns real
// Expect values between -1 and 1...returns 0 for invalid input
native Atan takes real x returns real

// Returns 0 if x and y are both 0
native Atan2 takes real y, real x returns real

```