return {
    ---@param buttons { button: string, description: string }[]
    textUI = function (buttons)
        lib.showKeyBind(buttons)
        local text = ""
        for _, button in ipairs(buttons) do
            text = text .. " [" .. button.button .. "] - " .. button.description .. "  \n"
        end
        lib.showTextUI(text, {
            position = 'left-center',
        })
    end,

    hideTextUI = function ()
        lib.hideTextUI()
    end,

    isTextUIActive = function ()
        return lib.isTextUIOpen()
    end,
}
