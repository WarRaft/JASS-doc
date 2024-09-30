# MathRound

```sql
native MathRound takes real r returns integer
```

Возвращает значение, которое представляет целое число, ближайшее к аргументу. Промежуточные значения
округляются в сторону от нуля.

```sql
function main takes nothing returns nothing
    local integer A = MathRound(3.49) // 3
    local integer B = MathRound(3.5) // 4
    local integer C = MathRound(-3.49) // -3
    local integer D = MathRound(-3.5) // -4
endfunction
```

