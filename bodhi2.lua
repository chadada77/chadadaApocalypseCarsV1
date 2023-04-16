Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)
        
        local playerPed = GetPlayerPed(-1)
        
        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            if GetEntityModel(vehicle) == GetHashKey("bodhi2") then
                local boneIndex1 = GetEntityBoneIndexByName(vehicle, "motor")
                if not DoesEntityExist(prop2) then
                    prop2 = CreateObject(GetHashKey("prop_mb_crate_01a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop2, vehicle, boneIndex1, 0.0, -2.0, -0.18, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop3) then
                    prop3 = CreateObject(GetHashKey("hei_prop_cntrdoor_mph_l"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop3, vehicle, boneIndex1, 1.0, -1.6, 0.0, 270.0, 80.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop4) then
                    prop4 = CreateObject(GetHashKey("hei_prop_cntrdoor_mph_r"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop4, vehicle, boneIndex1, -1.0, -1.6, 0.0, 270.0, 280.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop6) then
                    prop6 = CreateObject(GetHashKey("prop_barrel_exp_01a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop6, vehicle, boneIndex1, 0.0, -0.75, 0.18, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop7) then
                    prop7 = CreateObject(GetHashKey("prop_hobo_seat_01"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop7, vehicle, boneIndex1, 0.73, -1.5, -0.18, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop8) then
                    prop8 = CreateObject(GetHashKey("frag_plank_a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop8, vehicle, boneIndex1, 0.0, -1.3, 1.25, 90.0, 90.0, 0.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop9) then
                    prop9 = CreateObject(GetHashKey("frag_plank_a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop9, vehicle, boneIndex1, 0.0, -0.68, 1.25, 90.0, 90.0, 0.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop10) then
                    prop10 = CreateObject(GetHashKey("frag_plank_a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop10, vehicle, boneIndex1, 0.0, -1.93, 1.25, 90.0, 90.0, 0.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop11) then
                    prop11 = CreateObject(GetHashKey("frag_plank_a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop11, vehicle, boneIndex1, 0.0, -2.56, 1.25, 90.0, 90.0, 0.0, true, true, false, true, 1, true)
                end
            end
        end
    end
end)