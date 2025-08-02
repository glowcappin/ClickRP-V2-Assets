# Karma Developments - Server-side Graphics System 4.0

- Hello, first of all thank you for purchasing our script !
- Feel free to open a support ticket to resolve your problem/question. - Karma Developments 4.0

# Tip for the crash issue using gabz maps 

- Make sure to be like this in your `server.cfg`

```cfg

ensure cfx-gabz-mapdata  (Must come before karma_visuals)
ensure cfx-gabz-pdprops  (Must come before MRPD per Gabz readme )
ensure cfx-gabz-scenarios  (Not compatible with the karma_visuals pack so remove this resource)
ensure [gabz]
ensure karma_visuals
ensure [karma]  Other KARMA assets (World, Roads, Vegetation etc.)

```

# If you have problems with "some grass" on the roads, please do : 
- Comment out all the `Urban_GreenDryGrass_01` in `karma_visuals/data/materials/procedural.meta ` :CHECK_CHECK_1: 

# If you are getting crashs is because you have scenarios in some Maps, please do this :
- Go to your files and search for spmanifest, then delete that file from the map and it will fix the crash <3



# Discord: ANTUNES

# Karma Discord Discord : https://discord.gg/zg7cRhB4Yh

# Copyright (c) 2023-2024, Karma Developments Ltd. All rights reserved.
