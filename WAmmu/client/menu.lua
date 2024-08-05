ESX = exports['es_extended']:getSharedObject()

CreateThread(function()
    while true do
        for k,v in pairs(WayeArmurerie.Pos) do
            local interval = 500
            local posPlayer = GetEntityCoords(PlayerPedId())
            local point = v.pos
            local dist = #(posPlayer-point)
            if dist <= 10.0 then
                DrawMarker(22, point, 0.0, 0.0, 0.0, 0.0, 0.0, 180.0, 0.7, 0.7, 0.7, 241, 90, 34, 1.0, true, true, 2, false, nil, nil, false)
                if dist <= 2.0 then
                    Visual.Subtitle('Appuyer sur [~o~E~s~] pour accéder à ~o~l\'armurerie')
                    if IsControlJustPressed(1, 51) then
                        OpenArmurerie()
                    end
                end
            end
        end
        Wait(0)
    end
end)

Citizen.CreateThread(function()
    for k,v in pairs(WayeArmurerie.Pos) do
        local blip = AddBlipForCoord(v.pos)
        SetBlipSprite(blip, 156)
        SetBlipDisplay(blip, 2)
        SetBlipColour(blip, 66)
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Armurerie')
        EndTextCommandSetBlipName(blip)
    end
end)

-- Citizen.CreateThread(function()
--     local Hash = GetHashKey(WayeLocation.Ped.Hash)
--     local Pos = WayeLocation.Ped[1].pos
--     local Heading = WayeLocation.Ped.Heading
--     while not HasModelLoaded(Hash) do
--     RequestModel(Hash)
--     Wait(20)
--     end
--     ped = CreatePed("PED_TYPE_CIVFEMALE", Hash, Pos, Heading, false, true)
--     SetBlockingOfNonTemporaryEvents(ped, true)
--     FreezeEntityPosition(ped, true)
--     SetEntityInvincible(ped, true)
-- end)