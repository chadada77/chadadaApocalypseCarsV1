Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)
        
        local playerPed = GetPlayerPed(-1)
    
        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            if GetEntityModel(vehicle) == GetHashKey("flatbed") then
                local boneIndex1 = GetEntityBoneIndexByName(vehicle, "motor")

                if not DoesEntityExist(prop2) then
                    prop2 = CreateObject(GetHashKey("prop_container_03_ld"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop2, vehicle, boneIndex1, 0.0, -2.4, 0.3, 0.0, 0.0, 0.0, true, true, true, true, 1, true)
                end
                if not DoesEntityExist(prop3) then
                    prop3 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop3, vehicle, boneIndex1, 0.95, -2.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop4) then
                    prop4 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop4, vehicle, boneIndex1, 0.95, -3.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop5) then
                    prop5 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop5, vehicle, boneIndex1, 0.95, -4.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop6) then
                    prop6 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop6, vehicle, boneIndex1, 0.95, -1.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop7) then
                    prop7 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop7, vehicle, boneIndex1, 0.95, -2.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop8) then
                    prop8 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop8, vehicle, boneIndex1, -0.95, -1.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop9) then
                    prop9 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop9, vehicle, boneIndex1, -0.95, -2.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop10) then
                    prop10 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop10, vehicle, boneIndex1, -0.95, -3.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop11) then
                    prop11 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop11, vehicle, boneIndex1, -0.95, -4.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop12) then
                    prop12 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop12, vehicle, boneIndex1, -0.95, -0.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop13) then
                    prop13 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop13, vehicle, boneIndex1, 0.95, -0.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
            end
        end
    end
end)