local isSitting = false
local chairModel = "prop_chair_08"

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)

        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local nearbyChair = GetClosestObjectOfType(playerCoords, 1.0, GetHashKey(chairModel), false, false, false)
        NetworkOverrideClockTime(6, 30, 00);
        if DoesEntityExist(nearbyChair) then
            local chairCoords = GetEntityCoords(nearbyChair)
            local dist = #(playerCoords - chairCoords)
            local message = "Appuyez sur ~g~E~w~ pour vous assoir."
            if isSitting then
                message = "Appuyez sur ~g~E~w~ pour vous relever."
            end
            if dist < 1.0 then
                DrawText3D(chairCoords.x, chairCoords.y, chairCoords.z + 0.5, message)
            end
        end

        if IsControlJustReleased(0, 38) then -- Touche E
            if DoesEntityExist(nearbyChair) then
                local chairCoords = GetEntityCoords(nearbyChair)
                local chairForward = GetEntityForwardVector(nearbyChair)
                local playerDirection = playerCoords - chairCoords

                if Vdist(playerCoords, chairCoords) < 0.8 and Vmag(playerDirection) < 1.0 then
                    if not IsEntityAttached(playerPed) then
                        
                        SetEntityCoords(playerPed, chairCoords.x , chairCoords.y, chairCoords.z)
                        SetEntityRotation(playerPed, 0, 0, GetEntityHeading(nearbyChair) + 180 , 2, true)
                        TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_SEAT_CHAIR", 0, false)
                        isSitting = true
                        Citizen.Wait(500)
                        AttachEntityToEntity(playerPed, nearbyChair, 0, 0.0, 0.1, -0.01, 0.0, 0.0, 180.0, false, false, false, false, 0, true)
                    else
                        isSitting = false
                        DetachEntity(playerPed, true, true)
                        
                        SetEntityCoords(playerPed, chairCoords.x , chairCoords.y, chairCoords.z + 0.5)
                        Citizen.Wait(500)
                    end
                end
            end
        end
    end
end)

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local scale = 0.45
    if onScreen then
        SetTextScale(scale, scale)
        SetTextFont(0)
        SetTextProportional(true)
        SetTextColour(255, 255, 255, 255)
        SetTextOutline()
        SetTextCentre(true)
        SetTextEntry("STRING")
        SetTextDropShadow(0, 0, 0, 0, 255)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end
