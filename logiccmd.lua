local skynet = require("skynet")

local logiccmd = {}
local command, mhelp

local function help()
    if type(mhelp) ~= "table" then
        return
    end
    return mhelp
end

function logiccmd.ctor(cmd, h)
    command = cmd
    mhelp = h
    help()
end

return logiccmd