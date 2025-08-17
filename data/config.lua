return {
    -- supported frameworks (will be detected automatically):
    -- ox | esx | qbx| qb | custom (check framework/custom)


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

        Refer to the folder modules/textui if you want to edit/add more
    **/
    TextUI = 'custom',


    /** 
        Context menu options
        2 Option available
        ox : ox_lib
        custom : your own

        Refer to the folder modules/context if you want to edit/add more
    **/
    Context = 'ox',

    /** 
        Notification options
        2 Option available
        ox : ox_lib
        custom : your own

        Refer to the folder modules/notify if you want to edit/add more
    **/
    Notify = 'ox'
}