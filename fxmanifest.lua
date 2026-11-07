fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-no-blind-fire'
author 'Pigeon Studios'
description 'Stops players shooting blind from cover: they have to aim out before they can fire.'
version '1.1.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-no-blind-fire'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-no-blind-fire'

client_scripts {
    'configuration/config.lua',
    'locales/*.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
