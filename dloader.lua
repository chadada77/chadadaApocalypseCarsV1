Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)
        
        local playerPed = GetPlayerPed(-1)
        
        -- Vérifie si le joueur est dans un véhicule de type Dubsta
        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            if GetEntityModel(vehicle) == GetHashKey("dloader") then
                local boneIndex1 = GetEntityBoneIndexByName(vehicle, "motor")
                if not DoesEntityExist(prop1) then
                    prop1 = CreateObject(GetHashKey("prop_wall_light_15a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop1, vehicle, boneIndex1, 0.0, -0.35, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end

                -- Crée et positionne le prop prop_minigun_01
                if not DoesEntityExist(prop2) then
                    prop2 = CreateObject(GetHashKey("prop_box_wood02a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop2, vehicle, boneIndex1, 0.0, -1.7, 0.98, 0.0, 0.0, -90.0, true, false, false, true, 1, true)
                end

                -- Crée et positionne le prop3
                if not DoesEntityExist(prop3) then
                    prop3 = CreateObject(GetHashKey("prop_container_door_mb_l"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop3, vehicle, boneIndex1, 1.0, -1.6, 0.5, 270.0, 80.0, 180.0, true, false, false, true, 1, true)
                end
                -- Crée et positionne le prop4
                if not DoesEntityExist(prop4) then
                    prop4 = CreateObject(GetHashKey("prop_container_door_mb_r"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop4, vehicle, boneIndex1, -1.0, -1.6, 0.5, 270.0, 280.0, 180.0, true, false, false, true, 1, true)
                end
                
                --[[ -- Crée et positionne le prop p_rcss_s
                if not DoesEntityExist(prop5) then
                    prop5 = CreateObject(GetHashKey("p_rcss_s"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop5, vehicle, boneIndex1, 0.0, -0.3, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end ]]

                -- Crée et positionne le prop prop_barrel_exp_01a
                if not DoesEntityExist(prop6) then
                    prop6 = CreateObject(GetHashKey("prop_box_wood02a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop6, vehicle, boneIndex1, 0.0, -1.7, 0.35, 0.0, 0.0, -90.0, true, false, false, true, 1, true)
                end

                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop7) then
                    prop7 = CreateObject(GetHashKey("prop_jerrycan_01a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop7, vehicle, boneIndex1, 0.61, -1.5, 0.35, 0.0, 0.0, 90.0, true, false, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop8) then
                    prop8 = CreateObject(GetHashKey("frag_plank_a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop8, vehicle, boneIndex1, 0.0, -1.3, 1.75, 90.0, 90.0, 0.0, true, false, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop9) then
                    prop9 = CreateObject(GetHashKey("frag_plank_a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop9, vehicle, boneIndex1, 0.0, -0.68, 1.75, 90.0, 90.0, 0.0, true, false, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop10) then
                    prop10 = CreateObject(GetHashKey("frag_plank_a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop10, vehicle, boneIndex1, 0.0, -1.93, 1.75, 90.0, 90.0, 0.0, true, false, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop11) then
                    prop11 = CreateObject(GetHashKey("frag_plank_a"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop11, vehicle, boneIndex1, 0.0, -2.56, 1.75, 90.0, 90.0, 0.0, true, false, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_railsleepers01
                if not DoesEntityExist(prop12) then
                    prop12 = CreateObject(GetHashKey("prop_railsleepers01"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop12, vehicle, boneIndex1, 0.0, -2.8, 1.65, 90.0, 90.0, 0.0, true, false, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_railsleepers01
                if not DoesEntityExist(prop13) then
                    prop13 = CreateObject(GetHashKey("prop_railsleepers01"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop13, vehicle, boneIndex1, 0.0, -0.27, 1.65, 90.0, 90.0, 0.0, true, false, false, true, 1, true)
                end
            else
            -- Supprime les props s'ils existent et que le joueur n'est pas dans un véhicule de type Dubsta
            --[[ if DoesEntityExist(prop1) then
                DeleteEntity(prop1)
                prop1 = nil
            end
            
            if DoesEntityExist(prop2) then
                DeleteEntity(prop2)
                prop2 = nil
            end
            
            if DoesEntityExist(prop3) then
                DeleteEntity(prop3)
                prop3 = nil
            end ]]
        end
    end
end
end)