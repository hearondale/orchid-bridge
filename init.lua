
local Config = lib.load('data.config')

local function detectFramework()
    if GetResourceState('es_extended') == 'started' then
        return 'esx'
    elseif GetResourceState('ox_core') == 'started' then
        return 'ox'
    elseif GetResourceState('qb-core') == 'started' then
        return 'qb', 'qb'
    elseif GetResourceState('qbx_core') == 'started' then
        return 'qb', 'qbox'
    else
        return 'custom'
    end
end

local framework, core  = detectFramework()

if GetResourceState("ox_inventory") ~= "started" then
    return lib.print.error("No inventory resource ox_inventory found")
end

Orchid = {
    framework = not core and framework or core,
    notify = function(...) end,
    target = {},
    textUI = {},
    context = {}
}

inventory = exports.ox_inventory

if IsDuplicityVersion() then
    require(("framework.%s.server"):format(framework))
    local notifyModule = require(("modules.notify.server.%s"):format(Config.Notify))

    Orchid.notify = notifyModule

    local function printStartup()
        print("^3======= Orchid Bridge Loaded =======^7")
        print(("Framework: \t ^5%s^7"):format(Orchid.framework))
        print(("Target: \t ^5%s^7"):format(Config.Target))
        print(("Text UI: \t ^5%s^7"):format(Config.TextUI))
        print(("Context: \t ^5%s^7"):format(Config.Context))
        print(("Notify: \t ^5%s^7"):format(Config.Notify))
        print(("SkillCheck: \t ^5%s^7"):format(Config.SkillCheck))
        print(("Progress: \t ^5%s^7"):format(Config.Progress))
        print("^3====================================^7")
    end

    printStartup()
else -- Client initialization
    require(("framework.%s.client"):format(framework))

    Orchid.target = require(("modules.target.%s"):format(Config.Target))
    Orchid.textUI = require(("modules.textui.%s"):format(Config.TextUI))
    Orchid.context = require(("modules.context.%s"):format(Config.Context))
    Orchid.skillCheck = require(("modules.skillcheck.%s"):format(Config.SkillCheck))
    Orchid.progress = require(("modules.progress.%s"):format(Config.Progress))
    Orchid.notify = require(("modules.notify.client.%s"):format(Config.Notify))
end
