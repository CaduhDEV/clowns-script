function CreateClown(mod, pos)

    local model = GetHashKey(mod)

    if IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(1)
        end

        local ped = CreatePed(4,model, pos[1], pos[2], pos[3], GetEntityHeading(ped),false,true)
        SetEntityAsMissionEntity(ped, true, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        BlockPedDeadBodyShockingEvents(ped, true)

        SetModelAsNoLongerNeeded(model)
        return ped
    end
end

RegisterCommand('clown', function(source, args) 
    print('DEBUG: CRIANDO PALHAÇO PARA TESTE.')
    CreateClown(args[1], GetEntityCoords(PlayerPedId()))
end)
