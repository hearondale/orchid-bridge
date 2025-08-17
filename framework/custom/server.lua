Core = exports['orchid-core']:getSharedObject()

Events = {
    playerLoaded = "orchid:playerLoaded", -- player loaded event
    setJob = "orchid:setJob" -- setJob event
}

Framework = {
    RegisterUsableItem = Core.RegisterUsableItem,

    ---@param job string
    ---@return table
    GetActivePlayers = function (job)
        return Core.GetExtendedPlayers('job', job)
    end,

    GetPlayerFromId = function (src)
        local player = Core.GetPlayerFromId(src)
    
        if not player then return nil end
    
        local self = {}

        self.job = player.getJob()

        self.hasJob = function(jobName, grade)
            return self.job.name == jobName and self.job.grade >= (grade or 0)
        end
    
        self.addItem = function (item, cnt)
           return inventory:AddItem(self.source, item, cnt)
        end

        self.removeItem = function (item, cnt)
            return inventory:RemoveItem(self.source, item, cnt)
        end

        self.canCarryItem = function (item, cnt)
            return inventory:canCarryItem(self.source, item, cnt)
        end

        self.hasItem = function (item, cnt, metadata)
            return inventory:GetItemCount(self.source, item, metadata) >= cnt
        end

        self.isAdmin = function ()
            return player.hasRole('admin') or player.hasRole('s') or player.hasRole('event')
        end

        self.getName = player.getName
        
        self.source = src
        self.identifier = player.getIdentifier()
    
        return self
    end
}
