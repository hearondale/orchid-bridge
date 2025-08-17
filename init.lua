
local Config = lib.load('data.config')

local function detectFramework()
    if GetResourceState('es_extended') == 'started' then
        return 'esx'
    elseif GetResourceState('ox_core') == 'started' then
        return 'ox'
    elseif GetResourceState('qb-core') == 'started' or GetResourceState('qbx_core') == 'started' then
        return 'qb'
    else
        return 'custom'
    end
end

local core = detectFramework()

if GetResourceState("ox_inventory") ~= "started" then
    return lib.print.error("No inventory resource ox_inventory found")
end

Orchid = {
    notify = function(...) end,
    target = {},
    textUI = {},
    context = {}
}

inventory = exports.ox_inventory

if IsDuplicityVersion() then
    require("framework." .. core .. ".server")
    local notifyModule = require("modules.notify.server." .. Config.Notify)

    Orchid.notify = notifyModule

-- Client initialization
else
    require("framework." .. core .. ".client")
    local targetModule = require("modules.target." .. Config.Target)
    local textUIModule = require("modules.textui." .. Config.TextUI)
    local contextModule = require("modules.context." .. Config.Context)
    local notifyModule = require("modules.notify.client." .. Config.Notify)

    Orchid.target = targetModule
    Orchid.textUI = textUIModule
    Orchid.context = contextModule
    Orchid.notify = notifyModule
end


local function printStartup()
    print("^3======= Orchid Bridge Loaded =======")
    print("^7Framework: ^2" .. core)
    print("^7Target: ^5" .. Config.Target)
    print("^7Text UI: ^5" .. Config.TextUI)
    print("^7Context: ^5" .. Config.Context)
    print("^7Notify: ^5" .. Config.Notify)
    print("^3====================================")
end

printStartup()
