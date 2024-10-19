# S2I

```sql
native S2I takes [[[string|string.md]]] s returns [[[integer|integer.md]]]
```

Преобразует [строку](string.md) в [целое число](integer.md). Не поддерживает [восьмеричную](integer.md#radix8) и
[шестнадцатеричную](integer.md#hex) запись

Алгоритм довольно прост, строка побайтово перебирается слева направо игнорируя пробелы. При нахождении знака минуса или
числа функция начинает собирать результирущее число и если встретит любой не числовой символ, то завершит работу и
вернёт результат.

Если число не было найдено, будет возвращён ноль.

```sql
function [[[main|main.md]]] takes [[[nothing|nothing.md]]] returns [[[nothing|nothing.md]]]
    call ConsolePrint([[[I2S|I2S.md]]](S2I("в любой непонятной ситуации возвращает ноль"))) // 0
    call ConsolePrint([[[I2S|I2S.md]]](S2I("   12 игнорирует не цифры после числа"))) // 12
    call ConsolePrint([[[I2S|I2S.md]]](S2I(" -3 4 "))) // -3
    call ConsolePrint([[[I2S|I2S.md]]](S2I(" --5 "))) // 0
    call ConsolePrint([[[I2S|I2S.md]]](S2I(" -012 [[[восьмеричная запись|integer.md#radix8]]] не поддерживается"))) // -12
    call ConsolePrint([[[I2S|I2S.md]]](S2I(" -0xFF [[[шестнадцатеричная запись|integer.md#hex]]] не поддерживается"))) // 0
endfunction
```
