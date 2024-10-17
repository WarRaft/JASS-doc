# group

<show-structure for="chapter,procedure" depth="3"/>

Набор функций для работы с типом [](group.md).

<snippet id="main">

## Создание {id="create"}

- [](CreateGroup.md)
- [](DestroyGroup.md)

## Добавление {id="add"}

- [](GroupAddUnit.md)
- [](GroupRemoveUnit.md)
- [](GroupClear.md)
- [](GroupAddGroupEx.md)
- [](GroupRemoveGroupEx.md)

### Перечисление {id="enum"}

```
native GroupEnumUnitsOfType takes group whichGroup, string unitname, boolexpr filter returns nothing
native GroupEnumUnitsOfPlayer takes group whichGroup, player whichPlayer, boolexpr filter returns nothing
native GroupEnumUnitsOfTypeCounted takes group whichGroup, string unitname, boolexpr filter, integer countLimit returns nothing
native GroupEnumUnitsInRect takes group whichGroup, rect whichRect, boolexpr filter returns nothing
native GroupEnumUnitsInRectCounted takes group whichGroup, rect whichRect, boolexpr filter, integer countLimit returns nothing
native GroupEnumUnitsInRange takes group whichGroup, real x, real y, real radius, boolexpr filter returns nothing
native GroupEnumUnitsInRangeCounted takes group whichGroup, real x, real y, real radius, boolexpr filter, integer countLimit returns nothing
native GroupEnumUnitsSelected takes group whichGroup, player whichPlayer, boolexpr filter returns nothing
```

## Доступ {id="accesss"}

- [](GroupGetCount.md)

```
native ForGroup takes group whichGroup, code callback returns nothing
native FirstOfGroup takes group whichGroup returns unit

native GroupContainsUnit takes group whichGroup, unit whichUnit returns boolean

native GroupGetUnitByIndex takes group whichGroup, integer index returns unit
```

## Приказ {id="order"}

```
native GroupImmediateOrder takes group whichGroup, string orderName returns boolean
native GroupImmediateOrderById takes group whichGroup, integer orderId returns boolean

native GroupPointOrder takes group whichGroup, string orderName, real x, real y returns boolean
native GroupPointOrderById takes group whichGroup, integer orderId, real x, real y returns boolean

native GroupTargetOrder takes group whichGroup, string orderName, widget targetWidget returns boolean
native GroupTargetOrderById takes group whichGroup, integer orderId, widget targetWidget returns boolean
```

</snippet>