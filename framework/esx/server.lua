Core = exports['es_extended']:getSharedObject()

Events = {
    playerLoaded = "esx:playerLoaded", -- player loaded event
    setJob = "esx:setJob" -- setJob event
}

Framework = {
    RegisterUsableItem = Core.RegisterUsableItem,

    ---@param job string
    ---@return table
    GetActivePlayers = function (job)
        local players = {}


        return players
    end,
    GetPlayerFromId = function (src)
        local player = Core.GetPlayerFromId(src)
    
        if not player then return nil end
    
        local self = {}
    
        self.hasJob = function(jobName, grade)
            return player.getJob().name == jobName and player.getJob().grade >= (grade or 0)
        end
    
        self.addItem = function (item, cnt)
            return player.addInventoryItem(item, cnt)
        end

        self.removeItem = function (item, cnt)
            return player.removeInventoryItem(item, cnt)
        end

        self.canCarryItem = function (item, cnt)
            return player.canCarryItem(item, cnt)
        end

        self.hasItem = function (item, cnt, metadata)
            return inventory:GetItemCount(self.source, item, cnt, metadata) > 0
        end

        self.isAdmin = function ()
            return player.group == 'admin' or player.group == 'owner'
        end

        self.getName = player.getName
        
        self.source = src
        self.identifier = player.getIdentifier()
    
        return self
    end
}
