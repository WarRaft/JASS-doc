globals
    integer A = 1
endglobals

function Test takes string A returns nothing
    call ConsolePrint(A) // A
endfunction

function main takes nothing returns nothing
    call Test("A")
    call ConsolePrint(I2S(A)) // 1
endfunction

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_003" )
    call SetMapDescription( "TRIGSTR_004" )
    call SetPlayers( 1 )
    call SetTeams( 1 )
    call SetGamePlacement( MAP_PLACEMENT_USE_MAP_SETTINGS )

    call DefineStartLocation( 0, -1856.0, 2624.0 )

    call SetPlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(0), true )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

    call SetPlayerSlotAvailable( Player(0), MAP_CONTROL_USER )
    call InitGenericPlayerSlots(  )
endfunction

