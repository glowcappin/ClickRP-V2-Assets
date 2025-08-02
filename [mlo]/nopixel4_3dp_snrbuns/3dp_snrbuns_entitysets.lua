local interiors = {
    {
        ipl = '3dp_snrbuns_milo', -- snrbuns
        coords = { x=-515.792969, y=-706.0899, z=38.7752 },
        entitySets = {
            { name = 'shutter01', enable = false },
            { name = 'shutter02', enable = false },
            { name = 'shutter03', enable = false },
            { name = 'shutter04', enable = false },
            { name = 'shutter05', enable = false },
            { name = 'shutter06', enable = false },
            { name = 'shutter07', enable = false },
            { name = 'shutter08', enable = false },
            { name = 'shutter09', enable = false },
            { name = 'shutter10', enable = false },
            { name = 'pizza', enable = true },
            { name = 'coffee', enable = true },
            { name = 'hotdog', enable = true },
            { name = 'sushi', enable = true },
            { name = 'smoothie', enable = true },
            { name = 'burger', enable = true },
            { name = 'sandwich', enable = true },
            { name = 'kebab', enable = true },
            { name = 'taco', enable = true },
            { name = 'noodle', enable = true },
        }
    },
   
}

CreateThread(function()
    for _, interior in ipairs(interiors) do
        if not interior.ipl or not interior.coords or not interior.entitySets then
            return
        end
        RequestIpl(interior.ipl)
        local interiorID = GetInteriorAtCoords(interior.coords.x, interior.coords.y, interior.coords.z)
        if IsValidInterior(interiorID) then
            for __, entitySet in ipairs(interior.entitySets) do
                if entitySet.enable then
                    EnableInteriorProp(interiorID, entitySet.name)
                else
                    DisableInteriorProp(interiorID, entitySet.name)
                end
            end
            RefreshInterior(interiorID)
        end
    end
end)

