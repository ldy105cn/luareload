local reload = require("reload")          --luareload 模块
local skynet = require "skynet"
local cache = require "skynet.codecache"
local pstr = require("common.str")
local mgr = {}

function mgr.reload(...)
    local flist = {...}
    if not next(flist) then
        flist = filelist
    end
    skynet.errormore("hotfix list", pstr.table2Str(flist))
    cache.mode("OFF")          --停止lua代码共享
    reload.reload(flist)
    cache.mode("ON")
end

return mgr
