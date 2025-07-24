---@param buttons { button: string, description: string }[]
Orchid.textUI = function (buttons)
    exports.ox_lib:showKeyBind(buttons)
end

Orchid.hideTextUI = function ()
    exports.ox_lib:hideKeyBind()
end

Orchid.isTextUIActive = function ()
    return exports.ox_lib:isKeyBindOpen()
end