function StartWashingProcess()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local vehicle = GetClosestVehicle(coords, 2.0, 0, 71)

    if DoesEntityExist(vehicle) then
        if not IsPedInAnyVehicle(playerPed, false) and GetVehicleDirtLevel(vehicle) > 0.0 then
            local vehicleCoords = GetEntityCoords(vehicle)
            local distance = #(coords - vehicleCoords)

            if distance <= 2.0 then

                TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_MAID_CLEAN", 0, true)

                lib.progressBar({
                    label = _L('wash_start'),
                    duration = Config.WashTime, -- Set duration to match the total time of animation and washing
                    scenario = "WORLD_HUMAN_MAID_CLEAN",
                    playEnter = true
                })

                SetVehicleDirtLevel(vehicle, 0.0)
                isWashing = false
                ClearPedTasks(playerPed)

                lib.notify({
                    description = _L('wash_complete'),
                    type = 'success'
                })
            else
                lib.notify({
                    description = _L('too_far'),
                    type = 'error'
                })
            end
        else
            lib.notify({
                description = _L('already_clean'),
                type = 'error'
            })
        end
    else
        lib.notify({
            description = _L('no_vehicle'),
            type = 'error'
        })
    end
end


if Config.useCommand then
RegisterCommand(Config.CommandStart, StartWashingProcess)
end

function ShowNotification(message)
    lib.notify({
        description = message
    })
end

function _L(key)
    local lang = Config.Language
    local translation = Config.Translations and Config.Translations[lang] and Config.Translations[lang][key] or key
    return translation
end

exports('StartWashingProcess', StartWashingProcess)