return {
    ---@param buttons { button: string, description: string }[]
    textUI = function (buttons)
        lib.showKeyBind(buttons)
    end,

    hideTextUI = function ()
        lib.hideKeyBind()
    end,

    isTextUIActive = function ()
        return lib.isKeyBindOpen()
    end
}