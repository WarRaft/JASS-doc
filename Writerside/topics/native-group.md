<show-structure for="chapter,procedure" depth="3"/>

# group

Набор функций для работы с типом [](group.md).

<snippet id="main">

## Создание {id="create"}

- [](CreateGroup.md)
- [](DestroyGroup.md)

## Добавление {id="add"}

- [](GroupAddUnit.md)
- [](GroupRemoveUnit.md)
- [](GroupAddGroupEx.md)
- [](GroupRemoveGroupEx.md)
- [](GroupClear.md)

### Перечисление {id="enum"}

- [](GroupEnumUnitsInRange.md)
    - [](GroupEnumUnitsInRangeCounted.md)
- [](GroupEnumUnitsInRect.md)
    - [](GroupEnumUnitsInRectCounted.md)
- [](GroupEnumUnitsOfPlayer.md)
- [](GroupEnumUnitsOfType.md)
    - [](GroupEnumUnitsOfTypeCounted.md)
- [](GroupEnumUnitsSelected.md)

## Доступ {id="access"}

- [](GroupGetCount.md)
- [](ForGroup.md)
    - [](GetEnumUnit.md)
- [](FirstOfGroup.md)
- [](GroupGetUnitByIndex.md)
- [](GroupContainsUnit.md)

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