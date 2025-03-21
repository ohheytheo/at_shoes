for k, v in pairs(Config.Shops) do
    exports.ox_inventory:RegisterShop(k, {
        name = v.label,
        inventory = v.shoes,
        locations = {
            vec3(v.ped.coords.x, v.ped.coords.y, v.ped.coords.z),
        }
    })
end

for k, v in pairs(Config.Shoes) do
    ESX.RegisterUsableItem(k, function(source)
        TriggerClientEvent('at_shoes:client:UseShoe', source, k)
    end)
end