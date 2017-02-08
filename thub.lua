local skynet = require("skynet")
local cache = require("skynet.codecache")
local command = {}

function command.newlobby()
    local tlobby = skynet.newservice("tlobby")
    skynet.call(tlobby, "lua", "reload", "player")

end

skynet.start(function ()
    skynet.dispatch("lua", function(session, source, cmd, ...)
        local f = assert(command[cmd])
        skynet.retpack(f(...))
    end)
end)