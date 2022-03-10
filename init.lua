function toggleMute()

    -- Obtener el bundle: osascript -e 'id of app "zoom.us"' --> us.zoom.xos

    -- Zoom
    local zoom = hs.application.find("us.zoom.xos")
    if not (zoom == nil) then
        hs.eventtap.keyStroke({ "cmd", "shift" }, "a", 0, zoom)
    end

    -- Microsoft Teams
    local teams = hs.application.find("com.microsoft.teams")
    if not (teams == null) then
        hs.eventtap.keyStroke({ "cmd", "shift" }, "m", 0, teams)
    end

    -- Google Meet
    local meet = hs.application.find("com.google.Chrome")
    if not (meet == nil) then
        hs.eventtap.keyStroke({ "cmd" }, "d", 0, meet)
    end
end

local hyper = { "cmd", "alt", "ctrl", "shift" }

hs.hotkey.bind(hyper, "f5", toggleMute)
