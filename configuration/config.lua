Config = {}

-- Language for the text players see. 'auto' follows ox_lib's language (setr ox:locale "de" in
-- server.cfg) and is English when that isn't set. Or name a file from locales/, such as 'de' or 'pt-br'.
Config.Locale = 'auto'

-- GTA controls that are blocked while a player is in cover and not aiming. Aiming out of cover (holding
-- aim) always lets them shoot. See https://docs.fivem.net/docs/game-references/controls/
Config.BlockedControls = {
    24,     -- INPUT_ATTACK: shooting and throwing
    257,    -- INPUT_ATTACK2: the second attack input some weapons and controllers use
    142,    -- INPUT_MELEE_ATTACK_ALTERNATE: the attack button with a melee weapon
}

-- Tell the player why they can't shoot when they try. They're told at most once every
-- Config.MessageCooldown seconds.
Config.ShowMessage = true
Config.MessageCooldown = 4

-- How the message is shown.
-- 'auto' uses ox_lib notifications if ox_lib is running, otherwise GTA's notification feed.
-- 'ox_lib' or 'gta' to force one.
Config.Notifications = 'auto'

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
