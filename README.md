This is a reupload of my first ever script — I know it's pretty old, but I plan to update it soon!

A lightweight FiveM (ESX-based) resource that spawns interactive NPC shopkeepers using qtarget and allows players to equip or unequip shoes dynamically through an inventory item.

✨ Features
📦 Spawns peds at configured shop locations with animations and invincibility.
🎯 Interact with peds via qtarget for easy access to ox_inventory shops.
👟 Toggle shoes on/off with smooth pickup animation using the UseShoe event.
🧼 Cleans up ped entities on logout to save performance.
🔌 ESX-compatible with playerLoaded and onPlayerLogout events.
📁 Dependencies
ox_inventory
qtarget
ESX framework
ox_lib for lib.requestModel and lib.requestAnimDict
🛠️ Installation
Drop the resource into your resources folder.
Add ensure at_shoes to your server.cfg.
Set up your NPC shops and shoe items in config.lua.
🔧 Example Config Snippet
lua
Copy
Edit
Config.Shops = {
    ['shoes1'] = {
        ped = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(72.91, -1399.1, 29.37, 270.0),
            scenario = 'WORLD_HUMAN_CLIPBOARD',
            targetlabel = 'Open Shoe Shop',
            targeticon = 'fas fa-shoe-prints',
        }
    }
}

Config.Shoes = {
    ['airforce1'] = {
        drawable = 23,
        texture = 0
    }
}

Config.BareFoot = 34 -- index for no shoes
