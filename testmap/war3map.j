globals
    group g = CreateGroup()
endglobals

function gameStart takes nothing returns nothing
    call GroupTargetOrderById(null, null, null) // Безопасна при работе с null

    loop
        exitwhen GroupGetCount(g) >= 20
        call GroupAddUnit(g, CreateUnit(Player(0), 'hfoo', 0, 0, 0))
    endloop

    if GroupTargetOrderById(g, 0xd0012, CreateUnit(Player(0), 'hfoo', 1000, 1000, 0)) then // move
        call ConsolePrint("1")
    else
        call ConsolePrint("0")
    endif

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
