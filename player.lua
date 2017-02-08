local pstr = require("common.str")
local skynet = require "skynet"
local mgr = {}
local tab = {}
tab.a = "aaabbb"
tab.b = "eeeeee"
tab.c = {
    e = "qqqqqqq",
    f = 333333
}
local sz = 55555

local function loop()
    print("fall sleep")
    skynet.timeout(500, loop)    
end

skynet.timeout(500, loop)

function mgr.print()
    print(sz)
    print(pstr.table2Str(tab))
end

function mgr.dprint()
    print("ffffffffffffff")
    sz = 1212
    print(sz)
end

return mgr