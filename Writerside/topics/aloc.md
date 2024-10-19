# aloc

Способность, которая сломала послематчевую статистику и вывела костылеписание на новый уровень.

По умолчанию ей обладает только один [юнит](unit.md) - `uloc`.

Делает хозяина неуязвимым и невыбираемым. Поэтому зачастую используется для создания снарядов из специально
обученных [юнитов](unit.md).

Применяет эффекты сразу от трёх функций:

```sql
native SetUnitTargetable takes [[[unit|unit.md]]] whichUnit, boolean targetable returns nothing
native [[[SetUnitSelectable|SetUnitSelectable.md]]] takes [[[unit|unit.md]]] whichUnit, boolean selectable returns nothing
native SetUnitInvulnerable takes [[[unit|unit.md]]] whichUnit, boolean flag returns nothing
```