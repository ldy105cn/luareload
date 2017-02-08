local skynet = require("skynet")
local player = require("player")
local hotfix = require("hotfix")
local command = {}

function command.lsloaded()
    local reg = debug.getregistry()
    for k in pairs(reg._LOADED) do
        skynet.error(k)
    end
end

skynet.start(function ()
    skynet.dispatch("lua", function (session, source, cmd, ...)
        local f = hotfix[cmd]
        if not f then
            f = command[cmd]
        end
        if not f then
            f = player[cmd]
        end
        assert(f, "not register command "..cmd)
        skynet.retpack(f(...))
    end)
end)