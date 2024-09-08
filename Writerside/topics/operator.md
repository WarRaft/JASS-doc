# Операторы

<var name="ltr" value="слева направо"/>
<var name="rtl" value="справа налево"/>

<table>
<tr><td>Оператор</td><td>Описание</td><td>Пример</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">1</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>[]</td><td>Доступ к индексу</td><td>a[b]</td></tr>
<tr><td>()</td><td>Вызов функции</td><td>a(b)</td></tr>
<tr><td>()</td><td><a href="https://xgm.guru/p/ij/jass-condition#skobki">Скобки</a></td><td>(a + b) * c</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">2</format>, ассоциативность: <format style="bold">%rtl%</format></td></tr>
<tr><td>not</td><td>Логическое НЕ</td><td>not a</td></tr>
<tr><td>-</td><td>Математическая смена знака</td><td>-a</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">3</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>*</td><td>Умножение</td><td>a*b</td></tr>
<tr><td>/</td><td>Деление</td><td>a/b</td></tr>
<tr><td>%</td><td>Остаток от деления (только <a href="https://warcraft3.blizzard.com">Reforged</a>)</td><td>a%b</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">4</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>+</td><td>Сложение</td><td>a+b</td></tr>
<tr><td>-</td><td>Вычитание</td><td>a-b</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">5</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>&lt;</td><td>Меньше</td><td>a&lt;b</td></tr>
<tr><td>&gt;</td><td>Больше</td><td>a&gt;b</td></tr>
<tr><td>&lt;=</td><td>Меньше или равно</td><td>a&lt;=b</td></tr>
<tr><td>&gt;=</td><td>Больше или равно</td><td>a&gt;=b</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">6</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>==</td><td>Равно</td><td>a==b</td></tr>
<tr><td>!=</td><td>Не равно</td><td>a!=b</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">7</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>and</td><td>Логическое И</td><td>a and b</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">8</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>or</td><td>Логическое ИЛИ</td><td>a or b</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">9</format>, ассоциативность: <format style="bold">%rtl%</format></td></tr>
<tr><td>=</td><td>Присваивание</td><td>a=b</td></tr>

<tr><td colspan="3">Приоритет: <format style="bold">10</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>,</td><td>Перечисление</td><td>a,b</td></tr>
</table>

## Ассоциативность

Определяет направление разбора выражения.

## Приоритет

Определяет приоритет выполнения операций.

Чем меньше значение в таблице тем приоритет считается выше,
то бишь операция выполнится раньше других. Для операций с одинаковым приоритетом операции будут выполняться в порядке,
заданном ассоциативностью.
