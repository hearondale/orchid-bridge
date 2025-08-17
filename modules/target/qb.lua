return {
        addEntity = function (self, entity, options)
            exports['qb-target']:addEntity(entity, options)
        end,
        removeEntity = function (self, entity)
            exports['qb-target']:removeEntity(entity)
        end,
        addLocalEntity = function (self, entity, options)
            exports['qb-target']:addLocalEntity(entity, options)
        end,
        removeLocalEntity = function (self, entity)
            exports['qb-target']:removeLocalEntity(entity)
        end,
        addSphereZone = function (self, params)
            exports['qb-target']:addSphereZone(params)
        end,
        removeZone = function (self, id)
            exports['qb-target']:removeZone(id)
        end
    }