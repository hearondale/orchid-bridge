---@param buttons { button: string, description: string }[]
Orchid.textUI = function (buttons)
    lib.showKeyBind(buttons)
    local text = ""
    for _, button in ipairs(buttons) do
        text = text .. " [" .. button.button .. "] - " .. button.description .. "  \n"
    end
    exports.ox_lib:showTextUI(text, {
        position = 'left-center',
    })
end

Orchid.hideTextUI = function ()
    exports.ox_lib:hideTextUI()
end

Orchid.isTextUIActive = function ()
    return exports.ox_lib:isTextUIOpen()
end
