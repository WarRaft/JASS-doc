globals
    hashtable HT = InitHashtable()
    location L = Location(0, 0) // GetAxisZ_ujapi
endglobals

function GetAxisZ_ujapi takes real x, real y returns real
    call MoveLocation(L, x, y)
    return GetLocationZ(L)
endfunction

function MathRealLerp_ujapi takes real a, real b, real t returns real
    return a * (1-t) + b * t
endfunction

function OnTimer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer tid = GetHandleId(t)
    local real time = LoadReal(HT, tid, 'time')
    local unit cstr = LoadUnitHandle(HT, tid, 'cstr')
    local unit dumy = LoadUnitHandle(HT, tid, 'dumy')
    local unit aimt = LoadUnitHandle(HT, tid, 'aimt')
    local real cx = LoadReal(HT, tid, 'cx__')
    local real cy = LoadReal(HT, tid, 'cy__')
    local real ox = LoadReal(HT, tid, 'ox__')
    local real oy = LoadReal(HT, tid, 'oy__')
    local real nx
    local real ny
    local real runt = LoadReal(HT, tid, 'runt')
    local real k = runt / time
    local boolean complete = false
    local effect efct = LoadEffectHandle(HT, tid, 'efct')

    if k > 1 then
        set complete = true
        set k = 1
    endif

    call SetUnitX(aimt, MathRealLerp_ujapi(cx, ox, k + .5))
    call SetUnitY(aimt, MathRealLerp_ujapi(cy, oy, k + .5))

    call SetUnitX(dumy, MathRealLerp_ujapi(cx, ox, k))
    call SetUnitY(dumy, MathRealLerp_ujapi(cy, oy, k))

    call SaveReal(HT, tid, 'runt', runt + .01)

    if complete then
        call PauseTimer(t)
        call DestroyTimer(t)
        call DestroyEffect(efct)
        call KillUnit(dumy)
        call KillUnit(aimt)

        call FlushChildHashtable(HT, tid)
    endif

    set t = null
    set cstr = null
    set dumy = null
    set aimt = null
    set efct = null
endfunction

function OnOrder takes nothing returns nothing
    local timer t
    local integer tid
    local unit dumy
    local unit aimt
    local unit cstr = GetTriggerUnit()
    local real cx = GetUnitX(cstr)
    local real cy = GetUnitY(cstr)
    local real ox = GetOrderPointX()
    local real oy = GetOrderPointY()
    local real dx = ox - cx
    local real dy = oy - cy
    local real time = SquareRoot(dx * dx + dy * dy) / 500  // время = расстояние / скорость

    // attack = 0xd000f /* 851983 */
    if GetIssuedOrderId() != 851983 then
        set cstr = null
        return
    endif

    set t = CreateTimer()
    set tid = GetHandleId(t)

    call SaveUnitHandle(HT, tid, 'cstr', cstr)

    set dumy = CreateUnit(Player(0), 'dumy', cx, cy, Atan2(dy, dx) * bj_RADTODEG)
    call SaveUnitHandle(HT, tid, 'dumy', dumy)

    set aimt = CreateUnit(Player(0), 'dumy', MathRealLerp_ujapi(cx, ox, .01), MathRealLerp_ujapi(cy, oy, .01), 0)
    call SaveUnitHandle(HT, tid, 'aimt', aimt)
    //call AddSpecialEffectTarget("Buildings\\Other\\BarrelsUnit0\\BarrelsUnit0.mdl", dumy, "head")

    call SetUnitLookAt(dumy, "bone_head", aimt, 0, 0, 0)

    call SaveEffectHandle(HT, tid, 'efct', AddSpecialEffectTarget("Missile\\MaizConArrow.mdx", dumy, "head"))

    call SaveReal(HT, tid, 'time', time)
    call SaveReal(HT, tid, 'cx__', cx)
    call SaveReal(HT, tid, 'cy__', cy)
    call SaveReal(HT, tid, 'ox__', ox)
    call SaveReal(HT, tid, 'oy__', oy)

    call TimerStart(t, .01, true, function OnTimer)

    set cstr = null
    set dumy = null
endfunction

function gameStart takes nothing returns nothing
    local trigger t = CreateTrigger()
    local unit caster = CreateUnit(Player(0), 'hfoo', 0, 0, 0)

    call SelectUnit(caster, true)

    call TriggerRegisterPlayerUnitEvent(t, Player(0), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, null)
    call TriggerAddAction(t, function OnOrder)

    set t = null
    set caster = null
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
