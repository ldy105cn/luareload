
-- local skynet = require("skynet")
-- local player = require("player")
-- local lobby = require("lobby")
-- local reload = require("reload")
-- reload.postfix = "_update"	-- for test
-- -- skynet.start(function ()
--     lobby.print()

--     reload.reload({"lobby"})

--     lobby.print()
--     lobby.show()
-- end)
package.path = package.path .. ";test/testreload/?.lua;skynet-ext/?.lua"
require("common.luaext")
local pstr = require "common.str"
local CPlayer = class()
local player = CPlayer.new()
print(pstr.table2Str(CPlayer))
-- local reg = debug.getregistry()
-- for k in pairs(reg._LOADED) do
--     print(k)
-- end

local pstr = require("common.str")

print(pstr.table2Str(player))

local t = {11,234}
local a = t
print(t, a)
t = {}
print(t, a)
print(pstr.table2Str(a))
print(pstr.table2Str(t))