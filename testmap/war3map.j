globals
    unit Caster
    unit Dummy

endglobals


function gameStart takes nothing returns nothing
    local unit u = CreateUnit(Player(0), 'hfoo', 0, 0, 0)


endfunction

function main takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterTimerEvent(t, 0, false)
    call TriggerAddAction(t, function gameStart)
    set t = null
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
