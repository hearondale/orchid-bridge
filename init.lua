local Config = lib.load('data.config')

local core

if GetResourceState('es_extended') == 'started' then
    core = 'esx'
elseif GetResourceState('ox_core') == 'started'  then
    core = 'ox'
elseif GetResourceState('qb-core') == 'started' or GetResourceState('qbx_core') == 'started' then
    core = 'qb'
else
    core = 'custom'
end

if GetResourceState("ox_inventory") ~= "started" then
    return lib.print.error("No inventory resource ox_inventory found")
end


Orchid = {}
Target = {}

--- Server context
if IsDuplicityVersion() then
    require ("framework." .. core .. ".server")

    ---@param source number
    ---@param text string
    ---@param type 'info' | 'success' | 'error' | 'warning'
    ---@param duration number
    Orchid.notify = function (source, text, type, duration)
        lib.notify(source, {
            description = text,
            type = type,
            duration = duration or 4000
        })
    end

--- Client context
else
    require ("framework." .. core .. ".client")
    require ("target." .. Config.Target)
    require ("textui." .. Config.TextUI)


    ---@param text string
    ---@param type 'info' | 'success' | 'error' | 'warning'
    ---@param duration number
    Orchid.notify = function (text, type, duration)
        lib.notify({
            description = text,
            type = type,
            duration = duration or 4000
        })
    end
end

inventory = exports.ox_inventory

print("^3======= Orchid Bridge Loaded =======")
print("^7Framework: ^2" .. core)
print("^7Target: ^5" .. Config.Target)
print("^7Text UI: ^5" .. Config.TextUI)

print("^3====================================")
