fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Retro'
description 'Orchid Bridge'
version '0.5.0'

shared_scripts {
	'@ox_lib/init.lua'
}

files {
	'data/*.lua',
	'framework/**/client.lua',
	'**/*.lua',
	'modules/**/client/*.lua',
	'modules/**/*.lua',
	'init.lua',
}

client_scripts {
	'exports/client/*.lua',
}

server_scripts {
	'versionChecker.lua',
	'exports/server/*.lua',
}

