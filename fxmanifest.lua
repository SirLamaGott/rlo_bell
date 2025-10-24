fx_version "cerulean"
game "gta5"

author "SirLamaGott"
description "Simple Bell"
version "1.0.0"

shared_scripts { 
    "config/*.lua",
    "config/locales/*.lua",
}

client_scripts { 
    "bridge/**/client.lua", 
    "client/*.lua",
}

server_scripts { 
    "bridge/**/server.lua", 
    "server/*.lua",
}