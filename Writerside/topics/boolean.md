# boolean

<show-structure for="chapter,procedure" depth="2"/>

Простейший тип, который принимает всего два значения:

{type="narrow"}
`true`
: Истина. Указывает на верность условия или утверждения.

`false`
: Ложь. Указывает на неверность условия или утверждения.

## Операторы {id="bool-operator"}

### Присваивание {id="bool-assign"}

Сохранение значения второго операнда в объект, указанный первым операндом.

```c++
globals
    bool A = true
endglobals
```

### Отрицание {id="bool-negation"}

Логическое [отрицание](https://w.wiki/88Li) - унарная операция результатом которой является значение, противоположное
исходному.

```c++
globals
    bool A = not false // true
endglobals
```

### Равенство {id="bool-equality"}

Оператор равенства `==` возвращает значение `true`, если его операнды равны. В противном случае возвращается `false`.

```c++
globals
    bool A = true == false // false
endglobals
```

### Неравенство {id="bool-inequality"}

Оператор неравенства `!=` возвращает значение `true`, если его операнды не равны. В противном случае
возвращается `false`.

```c++
globals
    bool A = true != false // true
endglobals
```

### И {id="bool-and"}

Логическое [И](https://w.wiki/9tF2) - операция, которая возвращает `true` если оба операнда равны `true`. В противном
случае возвращается `false`.

```c++
globals
    bool A = true and false // false
endglobals
```

### ИЛИ {id="bool-or"}

Логическое [ИЛИ](https://w.wiki/9tFE) - операция, которая возвращает `true` если один из операндов равен `true`. В
противном случае возвращается `false`.

```c++
globals
    bool A = true or false // true
endglobals
```