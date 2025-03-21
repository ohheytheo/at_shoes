Config = {}

-- Drawable Number For BareFoot
Config.BareFoot = 34

-- Configure Useable Shoes
Config.Shoes = {
    ['shoe-12-0'] = { drawable = 12, texture = 0 },
    ['shoe-12-1'] = { drawable = 12, texture = 1 },
    ['shoe-12-2'] = { drawable = 12, texture = 2 },
    ['shoe-12-3'] = { drawable = 12, texture = 3 }
}

-- Configure Shops
Config.Shops = {

    ["LittleSeoulClothes"] = {
        label = 'Shoe Shop',
        ped = {
            model = 'a_m_y_salton_01',
            coords = vector4(-805.34, -594.88, 29.28, 234.99),
            scenario = 'WORLD_HUMAN_STAND_MOBILE',
            targeticon = 'fa-solid fa-cart-shopping',
            targetlabel = 'Open Shoe Shop',
        },
        shoes = {
            { name = 'shoe-12-0', price = 10 },
            { name = 'shoe-12-1', price = 10 },
            { name = 'shoe-12-2', price = 10 },
            { name = 'shoe-12-3', price = 10 }
        }
    }

}
