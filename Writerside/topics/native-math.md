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

- Modulo
    - [](MathRealModulo.md)
    - [](MathIntegerModulo.md)
- [](MathRealLerp.md)

## Геометрия {id="geometry"}

- Полярное смещение
    - [](MathPointProjectionX.md)
    - [](MathPointProjectionY.md)
- [](MathAngleBetweenPoints.md)
- [](MathDistanceBetweenPoints.md)

## Данные игры {id="game"}

- [](GetAxisZ.md)

```sql

//============================================================================
// MathAPI
// Returns 0 if x <= 0
native SquareRoot takes real x returns real

// computes x to the y power
// y == 0.0 => 1
// x ==0.0 and y < 0	=> 0
//
native Pow takes real x, real power returns real


3,141592

native Deg2Rad takes real degrees returns real
native Rad2Deg takes real radians returns real


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