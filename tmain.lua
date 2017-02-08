local  skynet = require("skynet")

skynet.start(function ()
    skynet.newservice("debug_console", 6500)
    local thub = skynet.newservice("thub")
    skynet.newservice("tlobby")
    skynet.exit()
end)