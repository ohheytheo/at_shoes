fx_version 'cerulean'
game 'gta5'

author 'Theo Flocka'
version '1.0.0'
description 'Shoes'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'config.lua'
}

client_script 'client/main.lua'
server_script 'server/main.lua'

lua54 'yes'
