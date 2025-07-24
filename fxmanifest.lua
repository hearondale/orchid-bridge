fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Retro'
description 'Orchid Bridge'
version '1.0.0'

shared_scripts {
	'@ox_lib/init.lua'
}

files {
	'data/*.lua',
	'framework/**/client.lua',
	'**/*.lua',
	'init.lua',
}

client_scripts {
	'exports/client/*.lua',
}

server_scripts {
	'exports/server/*.lua',
}