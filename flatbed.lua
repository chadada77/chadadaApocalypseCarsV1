Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)
        
        local playerPed = GetPlayerPed(-1)
        
        -- Vérifie si le joueur est dans un véhicule de type Dubsta
        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            if GetEntityModel(vehicle) == GetHashKey("flatbed") then
                -- Véhicule de type Dubsta détecté, ajoute les props si nécessaire
                local boneIndex1 = GetEntityBoneIndexByName(vehicle, "motor")
                local boneIndex2 = GetEntityBoneIndexByName(vehicle, "exhaust")
                SetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass", GetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass") * 5.0)
                --SetVehicleHandlingFloat(vehicle, "CHandlingData", "fDriveBiasFront", 0.850000)
                --SetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass", GetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass") * 1.5) -- Augmente la masse du véhicule
                SetVehicleHandlingVector(vehicle, "CHandlingData", "vecCentreOfMassOffset", vector3(0.0, 5.0, 5.0))
                --SetVehicleHandlingFloat(vehicle, "CHandlingData", "fSuspensionCompDamp", GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSuspensionCompDamp") * 1.1) -- Augmente la compression de la suspension du véhicule
                --SetVehicleHandlingFloat(vehicle, "CHandlingData", "fSuspensionReboundDamp", GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSuspensionReboundDamp") * 1.1) -- Augmente la détente de la suspension du véhicule
                -- Crée et positionne le prop prop_cctv_unit_02
                --[[ if not DoesEntityExist(prop1) then
                    prop1 = CreateObject(GetHashKey("p_armchair_01_s"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop1, vehicle, boneIndex1, 0.0, -1.5, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end ]]

                -- Crée et positionne le prop prop_minigun_01
                if not DoesEntityExist(prop2) then
                    prop2 = CreateObject(GetHashKey("prop_container_03_ld"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop2, vehicle, boneIndex1, 0.0, -2.4, 0.3, 0.0, 0.0, 0.0, true, true, true, true, 1, true)
                end

                -- Crée et positionne le prop3
                if not DoesEntityExist(prop3) then
                    prop3 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop3, vehicle, boneIndex1, 0.95, -2.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                -- Crée et positionne le prop4
                if not DoesEntityExist(prop4) then
                    prop4 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop4, vehicle, boneIndex1, 0.95, -3.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                
                -- Crée et positionne le prop p_rcss_s
                if not DoesEntityExist(prop5) then
                    prop5 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop5, vehicle, boneIndex1, 0.95, -4.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end

                -- Crée et positionne le prop prop_barrel_exp_01a
                if not DoesEntityExist(prop6) then
                    prop6 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop6, vehicle, boneIndex1, 0.95, -1.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end

                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop7) then
                    prop7 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop7, vehicle, boneIndex1, 0.95, -2.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop8) then
                    prop8 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop8, vehicle, boneIndex1, -0.95, -1.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop9) then
                    prop9 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop9, vehicle, boneIndex1, -0.95, -2.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop10) then
                    prop10 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop10, vehicle, boneIndex1, -0.95, -3.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop11) then
                    prop11 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop11, vehicle, boneIndex1, -0.95, -4.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop12) then
                    prop12 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop12, vehicle, boneIndex1, -0.95, -0.4, 1.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
                end
                -- Crée et positionne le prop prop_jerrycan_01a
                if not DoesEntityExist(prop13) then
                    prop13 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop13, vehicle, boneIndex1, 0.95, -0.4, 1.0, 0.0, 0.0, -90.0, true, true, false, true, 1, true)
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