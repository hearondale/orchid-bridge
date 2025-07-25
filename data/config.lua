return {
    -- supported frameworks (will be detected automatically):
    -- ox | esx | qbx| qb | custom (check bridge/custom)

    -- Supported inventories:
    -- ox | qb
    Inventory = 'ox',


    /** 
        3 Options available
        ox : ox_target
        qb : qb-target
        sleepless : sleepless_interact
    **/
    Target = 'ox',


    /** 
        Used for displaying keybinds
        2 Options available
        ox : ox_lib
        custom : your own

        Refer to the folder textui if you want to edit/add more
    **/
    TextUI = 'custom'
}