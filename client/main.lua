local function SpawnPeds()
    for k, v in pairs(Config.Shops) do
        lib.requestModel(v.ped.model)
        v.ped.entity = CreatePed(0, v.ped.model, v.ped.coords.xyz, v.ped.coords.w, false, false)
        TaskStartScenarioInPlace(v.ped.entity, v.ped.scenario, 0, true)
        FreezeEntityPosition(v.ped.entity, true)
        SetEntityInvincible(v.ped.entity, true)
        SetBlockingOfNonTemporaryEvents(v.ped.entity, true)
        exports.qtarget:AddTargetEntity(v.ped.entity, {
            options = {
                {
                    label = v.ped.targetlabel,
                    icon = v.ped.targeticon,
                    action = function()
                        exports.ox_inventory:openInventory('shop', { type = k, id = 1 })
                    end
                }
            },
            distance = 2.0
        })
    end
end

local function RemovePeds()
    for _, v in pairs(Config.Shops) do
        if DoesEntityExist(v.ped.entity) then
            DeleteEntity(v.ped.entity)
        end
    end
end

RegisterNetEvent('esx:playerLoaded', function()
    SpawnPeds()
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    RemovePeds()
end)

RegisterNetEvent('at_shoes:client:UseShoe', function(shoe)
    if not Config.Shoes[shoe] then return end
    local ped = PlayerPedId()
    local CurrentShoe = GetPedDrawableVariation(ped, 6)
    local CurrentVariation = GetPedTextureVariation(ped, 6)
    lib.requestAnimDict('pickup_object')
    TaskPlayAnim(ped, "pickup_object", "pickup_low", 8.0, -8.0, -1, 1, 0, false, false, false)
    Wait(1200)
    if CurrentShoe == Config.Shoes[shoe].drawable and CurrentVariation == Config.Shoes[shoe].texture then
        SetPedComponentVariation(ped, 6, Config.BareFoot, 0)
    else
        SetPedComponentVariation(ped, 6, Config.Shoes[shoe].drawable, Config.Shoes[shoe].texture)
    end
    ClearPedTasks(ped)
end)