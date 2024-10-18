globals
    group g = CreateGroup()
endglobals

function gameStart takes nothing returns nothing
    call ConsolePrint(GetUnitName(GroupGetUnitByIndex(null, null))) // Безопасна при работе с null

    call GroupAddUnit(g, CreateUnit(Player(0), 'uloc', 0, 0, 0))
    call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0))
    call ConsolePrint(GetUnitName(GroupGetUnitByIndex(g, 1))) // Footman
endfunction

function main takes nothing returns nothing
    call TimerStart(CreateTimer(), 0, false, function gameStart)
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
