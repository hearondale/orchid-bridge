-- Refer to the folder module

return {
    -- supported frameworks (will be detected automatically):
    -- ox | esx | qbx| qb | custom (check framework/custom)


    -- ox  : ox_target
    -- qb  : qb-target
    -- sleepless : sleepless_interact
    Target = 'ox',

    -- In most our resource used for displaying keybinds
    -- ox       :  ox_lib
    -- default  :  GTA Help Text
    -- custom   :  your own
    TextUI = 'default',

    -- Context menu
    -- ox       : ox_lib
    -- custom   : your own
    Context = 'ox',

    -- ox       : ox_lib
    -- custom   : your own
    Notify = 'ox',

    -- ox       : ox_lib
    -- custom   : your own
    Progress = 'ox',

    -- ox       : ox_lib
    -- custom   : your own
    SkillCheck = 'ox'
}