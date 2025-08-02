fx_version 'cerulean'
game 'gta5'
author 'Gabz'
description 'Lore Friendly Vehicles'
version '1.0'
lua54 'yes'

data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'

files {
  'data/**/*.meta'
}

client_script 'data/**/vehicle_names.lua'