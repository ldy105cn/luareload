local pstr = require("common.str")
local mgr = {}
local tab = {}
tab.a = 12580
tab.b = "uuuuuuuuuuuuu"
tab.c = {
    e = "sssss",
    f = 119
}
local sz = 911

function mgr.print()
    print(sz)
    print(pstr.table2Str(tab))
end

function mgr.show()
    print("new show")
end

return mgr