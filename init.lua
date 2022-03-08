function toggleMute()
    local zoom = hs.application.find("us.zoom.xos")
    local teams = hs.application.find("com.microsoft.teams")
    if not (zoom == nil) then
        hs.eventtap.keyStroke({ "cmd", "shift" }, "a", 0, zoom)
    end
    if not (teams == null) then
        hs.eventtap.keyStroke({ "cmd", "shift" }, "m", 0, teams)
    end
end

local hyper = { "cmd", "alt", "ctrl", "shift" }

hs.hotkey.bind(hyper, "f5", toggleMute)
