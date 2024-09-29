function A takes location B returns location
    local location C = null // Разрешено явно присваивать [[[null|null.md]]] переменным с типом наследующим [[[handle|handle.md]]]

    call ConsolePrint(I2S(GetHandleId(B))) // В консоль будет выведен ноль, так как объект не создан

    if B == null then
        call ConsolePrint("Этот блок сработает так как передан [[[null|null.md]]]")
    endif

    return null // Разрешено явно указывать [[[null|null.md]]] возвращая тип наследующий [[[handle|handle.md]]]
endfunction

function main takes nothing returns nothing
    call A(null) // Передавая [[[null|null.md]]] как [[[аргумент|arguments.md]]] он будет передан как [[[null|null.md]]]
endfunction

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_003")
    call SetMapDescription("TRIGSTR_004")
    call SetPlayers(1)
    call SetTeams(1)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, -1856.0, 2624.0)

    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
endfunction

