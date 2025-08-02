--[[
    background_blue
    background_darkblue
    background_darkerblue
    background_np
    background_darkgreen
    background_green
    background_other
    background_pink
    background_red
    background_yellow
]]

local background = "background_pink"
local opacity = 20

CreateThread(function()
    RequestStreamedTextureDict("karma_pause", true)
    while not HasStreamedTextureDictLoaded("karma_pause") do
        Wait(100)
    end

    while true do
        -- Verifica se o jogador está no menu de pausa
        if IsPauseMenuActive() then
            SetScriptGfxDrawBehindPausemenu(true)
            DrawSprite("karma_pause", background, 0.5, 0.5, 10.0, 10.0, 0, 255, 255, 255, opacity)
        end

        if not IsPauseMenuActive() then
            SetStreamedTextureDictAsNoLongerNeeded("karma_pause")
        end
        
        Wait(0)
    end
end)
