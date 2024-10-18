# aloc

Способность, которая сломала послематчевую статистику и вывела костылеписание на новый уровень.

По умолчанию ей обладает только один [юнит](unit.md) - `uloc`.

Делает хозяина неуязвимым и невыбираемым. Поэтому зачастую используется для создания снарядов из специально
обученных [юнитов](unit.md).

Применяет эффекты сразу от трёх функций:

```
native SetUnitTargetable takes unit whichUnit, boolean targetable returns nothing
native [[[SetUnitSelectable|SetUnitSelectable.md]]] takes unit whichUnit, boolean selectable returns nothing
native SetUnitInvulnerable takes unit whichUnit, boolean flag returns nothing
```