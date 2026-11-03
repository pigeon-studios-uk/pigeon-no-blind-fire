--[[
    Pigeon No Blind Fire: client.

    While the player is in cover and not aiming, the attack controls are blocked, so the only way to
    shoot from cover is to aim out of it first. Outside cover it only checks four times a second.
]]

local IDLE_MS = 250                  -- how often to check for cover when not in it

local strings = Locales[Config.Locale] or Locales.en
local lastMessage = -math.huge

local function notify(text)
    local mode = Config.Notifications
    if mode == 'ox_lib' or (mode == 'auto' and GetResourceState('ox_lib') == 'started') then
        TriggerEvent('ox_lib:notify', { title = strings.title, description = text, type = 'error' })
    else
        BeginTextCommandThefeedPost('STRING')
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandThefeedPostTicker(false, false)
    end
end

local function isAiming(ped)
    return IsPedAimingFromCover(ped) or IsPlayerFreeAiming(PlayerId())
end

local function block()
    local tried = false
    for _, control in ipairs(Config.BlockedControls) do
        DisableControlAction(0, control, true)
        if IsDisabledControlJustPressed(0, control) then tried = true end
    end

    if tried and Config.ShowMessage then
        local now = GetGameTimer()
        if now - lastMessage >= (Config.MessageCooldown or 4) * 1000 then
            lastMessage = now
            notify(strings.aim_first)
        end
    end
end

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if IsPedInCover(ped, false) then
            -- Checked every frame while in cover, so letting go of aim blocks shooting straight away.
            if not isAiming(ped) then block() end
            Wait(0)
        else
            Wait(IDLE_MS)
        end
    end
end)
