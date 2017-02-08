local skynet = require("skynet")
local command = {}

skynet.start(function ()
    skynet.dispatch("lua", function ( session, source, cmd,  ... )
        local f = assert(command[cmd])
        skynet.retpack(f(...))
    end)
end)