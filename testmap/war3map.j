function A takes integer I, boolean B returns boolean
    call ConsolePrint(I2S(I))
    if B then
        call ConsolePrint(" true\n")
    else
        call ConsolePrint(" false\n")
    endif
    return B
endfunction

function main takes nothing returns nothing
    if A(1, true) or A(2, false) and A(3, false) then
        call ConsolePrint("\nTRUE")
    else
        call ConsolePrint("\nFALSE")
    endif

    call ConsolePrint("\n\n 3")
    // (true or false) and false -> true and false -> false
    // true or (false and false) -> true or false -> true
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

