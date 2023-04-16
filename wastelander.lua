Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)
        
        local playerPed = GetPlayerPed(-1)
        
        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            if GetEntityModel(vehicle) == GetHashKey("wastelander") then
                local boneIndex1 = GetEntityBoneIndexByName(vehicle, "motor")
                local boneIndex2 = GetEntityBoneIndexByName(vehicle, "exhaust")
                SetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass", GetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass") * 5.0)
                SetVehicleHandlingVector(vehicle, "CHandlingData", "vecCentreOfMassOffset", vector3(0.0, 5.0, 5.0))

                
                if not DoesEntityExist(prop3) then
                    prop3 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop3, vehicle, boneIndex1, 1.2, -2.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop4) then
                    prop4 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop4, vehicle, boneIndex1, 1.2, -3.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop5) then
                    prop5 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop5, vehicle, boneIndex1, 1.2, 0.6, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop6) then
                    prop6 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop6, vehicle, boneIndex1, 1.2, -1.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop7) then
                    prop7 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop7, vehicle, boneIndex1, 1.2, -2.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop8) then
                    prop8 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop8, vehicle, boneIndex1, -1.2, -1.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop9) then
                    prop9 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop9, vehicle, boneIndex1, -1.2, -2.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop10) then
                    prop10 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop10, vehicle, boneIndex1, -1.2, -3.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop11) then
                    prop11 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop11, vehicle, boneIndex1, -1.2, 0.6, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop12) then
                    prop12 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop12, vehicle, boneIndex1, -1.2, -0.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop13) then
                    prop13 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop13, vehicle, boneIndex1, 1.2, -0.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
--2nd Rangee
                if not DoesEntityExist(prop14) then
                    prop14 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop14, vehicle, boneIndex1, 0.6, -2.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop15) then
                    prop15 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop15, vehicle, boneIndex1, 0.6, -3.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop16) then
                    prop16 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop16, vehicle, boneIndex1, 0.6, 0.6, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop17) then
                    prop17 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop17, vehicle, boneIndex1, 0.6, -1.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop18) then
                    prop18 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop18, vehicle, boneIndex1, 0.6, -2.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop19) then
                    prop19 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop19, vehicle, boneIndex1, -0.6, -1.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop20) then
                    prop20 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop20, vehicle, boneIndex1, -0.6, -2.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop21) then
                    prop21 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop21, vehicle, boneIndex1, -0.6, -3.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop22) then
                    prop22 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop22, vehicle, boneIndex1, -0.6, 0.6, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop23) then
                    prop23 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop23, vehicle, boneIndex1, -0.6, -0.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop24) then
                    prop24 = CreateObject(GetHashKey("prop_chair_08"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop24, vehicle, boneIndex1, 0.6, -0.4, 1.3, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop25) then
                    prop25 = CreateObject(GetHashKey("prop_fnclink_06gatepost"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop25, vehicle, boneIndex1, 1.65, 1.9, 1.9, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop26) then
                    prop26 = CreateObject(GetHashKey("prop_fnclink_06gatepost"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop26, vehicle, boneIndex1, -1.65, 1.9, 1.9, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop27) then
                    prop27 = CreateObject(GetHashKey("prop_fnclink_06gatepost"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop27, vehicle, boneIndex1, 1.65, -3.8, 1.9, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop28) then
                    prop28 = CreateObject(GetHashKey("prop_fnclink_06gatepost"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop28, vehicle, boneIndex1, -1.65, -3.8, 1.9, 0.0, 0.0, 180.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop29) then
                    prop29 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop29, vehicle, boneIndex1, 1.1, -3.6, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop30) then
                    prop30 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop30, vehicle, boneIndex1, 1.1, -2.94, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop31) then
                    prop31 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop31, vehicle, boneIndex1, 1.1, -2.28, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop32) then
                    prop32 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop32, vehicle, boneIndex1, 1.1, -1.62, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop33) then
                    prop33 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop33, vehicle, boneIndex1, 1.1, -0.96, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop34) then
                    prop34 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop34, vehicle, boneIndex1, 1.1, -0.3, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop35) then
                    prop35 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop35, vehicle, boneIndex1, 1.1, 0.36, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop36) then
                    prop36 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop36, vehicle, boneIndex1, 1.1, 1.02, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop37) then
                    prop37 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop37, vehicle, boneIndex1, 1.1, 1.68, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end

                

                if not DoesEntityExist(prop38) then
                    prop38 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop38, vehicle, boneIndex1, -1.1, -3.6, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop39) then
                    prop39 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop39, vehicle, boneIndex1, -1.1, -2.94, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop40) then
                    prop40 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop40, vehicle, boneIndex1, -1.1, -2.28, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop41) then
                    prop41 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop41, vehicle, boneIndex1, -1.1, -1.62, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop42) then
                    prop42 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop42, vehicle, boneIndex1, -1.1, -0.96, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop43) then
                    prop43 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop43, vehicle, boneIndex1, -1.1, -0.3, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop44) then
                    prop44 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop44, vehicle, boneIndex1, -1.1, 0.36, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop45) then
                    prop45 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop45, vehicle, boneIndex1, -1.1, 1.02, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end
                if not DoesEntityExist(prop46) then
                    prop46 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop46, vehicle, boneIndex1, -1.1, 1.68, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end    
                if not DoesEntityExist(prop47) then
                    prop47 = CreateObject(GetHashKey("prop_container_door_mb_l"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop47, vehicle, boneIndex1, -0.675, 0.28, 3.3, -90.0, 0.0, 0.0, true, true, false, true, 1, true)
                end      
                if not DoesEntityExist(prop48) then
                    prop48 = CreateObject(GetHashKey("prop_container_door_mb_l"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop48, vehicle, boneIndex1, -0.675, -2.02, 3.3, -90.0, 0.0, 0.0, true, true, false, true, 1, true)
                end     
                if not DoesEntityExist(prop49) then
                    prop49 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop49, vehicle, boneIndex1, 0.0, 1.68, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end 
                if not DoesEntityExist(prop50) then
                    prop50 = CreateObject(GetHashKey("frag_plank_b"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop50, vehicle, boneIndex1, 0.0, -3.6, 3.25, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end   
                if not DoesEntityExist(prop51) then
                    prop51 = CreateObject(GetHashKey("prop_rub_planks_03"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop51, vehicle, boneIndex1, -1.65, -2.6, 2.95, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end  
                if not DoesEntityExist(prop52) then
                    prop52 = CreateObject(GetHashKey("prop_rub_planks_03"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop52, vehicle, boneIndex1, -1.65, -0.2, 2.95, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end    
                if not DoesEntityExist(prop53) then
                    prop53 = CreateObject(GetHashKey("prop_rub_planks_03"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop53, vehicle, boneIndex1, -1.65, 2.2, 2.95, 90.0, 90.0, 00.0, true, true, false, true, 1, true)
                end   
                if not DoesEntityExist(prop56) then
                    prop56 = CreateObject(GetHashKey("prop_rub_planks_03"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop56, vehicle, boneIndex1, 0.0, 1.9, 2.95, 0.0, 90.0, 0.0, true, true, false, true, 1, true)
                end   
                if not DoesEntityExist(prop57) then
                    prop57 = CreateObject(GetHashKey("prop_rub_planks_03"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop57, vehicle, boneIndex1, 1.65, -2.6, 2.95, 90.0, -90.0, 0.0, true, true, false, true, 1, true)
                end  
                if not DoesEntityExist(prop58) then
                    prop58 = CreateObject(GetHashKey("prop_rub_planks_03"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop58, vehicle, boneIndex1, 1.65, -0.2, 2.95, 90.0, -90.0, 0.0, true, true, false, true, 1, true)
                end    
                if not DoesEntityExist(prop59) then
                    prop59 = CreateObject(GetHashKey("prop_rub_planks_03"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop59, vehicle, boneIndex1, 1.65, 2.2, 2.95, 90.0, -90.0, 0.0, true, true, false, true, 1, true)
                end   
                if not DoesEntityExist(prop60) then
                    prop60 = CreateObject(GetHashKey("prop_container_door_mb_r"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop60, vehicle, boneIndex1, 1.7, -2.6, 1.9, 90.0, -90.0, 0.0, true, true, false, true, 1, true)
                end  
                if not DoesEntityExist(prop61) then
                    prop61 = CreateObject(GetHashKey("prop_container_door_mb_r"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop61, vehicle, boneIndex1, 1.7, 0.7, 1.9, 90.0, -90.0, 0.0, true, true, false, true, 1, true)
                end  
                if not DoesEntityExist(prop62) then
                    prop62 = CreateObject(GetHashKey("prop_container_door_mb_l"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop62, vehicle, boneIndex1, -1.70, 0.7, 1.9, 90.0, 90.0, 0.0, true, true, false, true, 1, true)
                end  
                if not DoesEntityExist(prop63) then
                    prop63 = CreateObject(GetHashKey("prop_container_door_mb_l"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop63, vehicle, boneIndex1, -1.70, -2.6, 1.9, 90.0, 90.0, 0.0, true, true, false, true, 1, true)
                end  
                if not DoesEntityExist(prop64) then
                    prop64 = CreateObject(GetHashKey("prop_container_door_mb_l"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop64, vehicle, boneIndex1, -1.7, -3.8, 2.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                end 
                if not DoesEntityExist(prop65) then
                    prop65 = CreateObject(GetHashKey("prop_container_door_mb_r"), 0.0, 0.0, 0.0, true, true, true)
                    AttachEntityToEntity(prop65, vehicle, boneIndex1, 1.7, -3.8, 2.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                end 
            end
        end
    end
end)