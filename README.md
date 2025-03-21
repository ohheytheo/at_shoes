[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FAwleks%2Fat_shoes&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)

# Abstract Devs | Ped Shop System with Shoe Toggle

> 💬 *This is a reupload of my first ever script — I know it's pretty old, but I plan to update it soon!*

A resource that spawns interactive NPC shopkeepers using `qtarget` and allows players to equip or unequip shoes dynamically through an inventory item.

---

## ✨ Features

- 🧍 Spawns peds at configured shop locations with animations and invincibility.  
- 🎯 Interact with peds via `qtarget` for easy access to `ox_inventory` shops.  
- 👟 Toggle shoes on/off with a smooth pickup animation using the `UseShoe` event.  

---

## 📦 Dependencies

This script relies on the following dependencies to function properly:

### 1. **[ox_inventory](https://github.com/overextended/ox_inventory)**
- **What it does:** Provides the shop inventory interface.
- **Installation:** Download from the GitHub link above and ensure it's started before `at_shoes`.

### 2. **[qtarget](https://github.com/qbcore-framework/qtarget)**
- **What it does:** Enables interaction with peds using targeting.
- **Installation:** Download and add it to your server, then start it before this resource.

### 3. **[ox_lib](https://github.com/overextended/ox_lib)**
- **What it does:** Used for model and animation loading (`lib.requestModel`, `lib.requestAnimDict`).
- **Installation:** Required for animations and utilities — follow the setup guide on their GitHub.

### 4. **ESX Framework**
- **What it does:** Core dependency that handles player state events like `playerLoaded`, `onPlayerLogout`.

---

## 🛠️ Installation

1. Place `at_shoes` in your `resources` folder.
2. Add the following line to your `server.cfg`:
   ```
   ensure at_shoes
   ```
3. Make sure all dependencies are installed and started before this resource.
4. Configure your shop NPCs and shoe items in the `config.lua`.

---

## ⚙️ Configuration

### **`config.lua`**

```
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
```


## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

## 🤝 Contributing

Contributions are welcome!  
Feel free to fork the repo, improve the code, and submit a pull request.
