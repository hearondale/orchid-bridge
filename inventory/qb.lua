local inventory = exports['qb-inventory']

if IsDuplicityVersion() then
    local function convertItems (items)
        for i = 1, #items do
            local item = items[i]
            items[i].requiredLicense = item.requiredLicense or item.license
        end
        return items
    end

    inventory:RegisterShop = function (name, shop)
        return inventory:CreateShop({
            name = name,
            label = shop.name,
            coords = shop.coords, -- optional
            slots = #shop.inventory,
            items = convertItems(shop.inventory)
        })
    end
end