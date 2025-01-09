# real

[Вещественные числа](https://w.wiki/8D3B) - расширение понятия целых и рациональных чисел. Включают в себя все возможные
числа на числовой прямой, включая, дробные и иррациональные числа. В игре реализованы
как [float](https://learn.microsoft.com/en-us/cpp/cpp/data-type-ranges).

| Тип  | Бит | Байт | Диапазон значений   | Минимальное положительное число | Максимальное количество знаков |
|------|-----|------|---------------------|---------------------------------|--------------------------------|
| real | 32  | 4    | +/- 3.402823466e+38 | 1.175494351e-38                 | 6                              |

```SQL
globals
    real A = 1.1
    real B = -1.
    real C = -.1
endglobals
```

## Приведение типа {id="cast"}

### integer {id="integer"}

Преобразование [](integer.md) в `real` происходит автоматически.

```sql
function main takes nothing returns nothing
    local real A = 012 // 10.000
    local real B = 10  // 10.000
    local real C = 0xA // 10.000
    local real D = 'A' // 65.000
    
    local integer E = 10
    local real F = E // 10.000 
endfunction
```

### string {id="string"}

Для получения `integer` из строки необходимо использовать функцию [](S2R.md).

```sql
globals
    real A = [[[S2R|S2R.md]]]("-.3") // -0.300 
endglobals
```

### Математика {id="math"}

При выполнении математических операций между [](integer.md) и `real`, результат всегда будет иметь тип `real`.

```sql
function main takes nothing returns nothing
    local real A = 5/2  // 2.000
    local real B = 5/2. // 2.500
endfunction
```

