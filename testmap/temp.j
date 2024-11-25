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
