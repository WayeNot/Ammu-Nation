ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('WAmmu:BuyArmesBlanches')
AddEventHandler('WAmmu:BuyArmesBlanches', function(label, name, price)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local getMoney = xPlayer.getAccount('money').money
    local getBank = xPlayer.getAccount('bank').money

    function BuySucess(accountType)
        xPlayer.removeAccountMoney(accountType, price)
        xPlayer.addInventoryItem(name, 1)
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Armurerie', 'Armurier', 'Vous venez d\'acheter 1x~s~ '..label..' pour '..price..'$ ~s~!', nil, 8)
    end

    if getMoney >= price then
        BuySucess('money')
    elseif getBank >= price then
        BuySucess('bank')
    else
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Armurerie', '~o~Armurier', 'Va chercher de l\'argent !', nil, 8)
    end
end)

RegisterNetEvent('WAmmu:BuyArmesPoing')
AddEventHandler('WAmmu:BuyArmesPoing', function(label, name, price)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local getMoney = xPlayer.getAccount('money').money
    local getBank = xPlayer.getAccount('bank').money

    function BuySucess(accountType)
        xPlayer.removeAccountMoney(accountType, price)
        xPlayer.addInventoryItem(name, 1)
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Armurerie', 'Armurier', 'Vous venez d\'acheter 1x~s~ '..label..' pour '..price..'$ ~s~!', nil, 8)
    end

    if getMoney >= price then
        BuySucess('money')
    elseif getBank >= price then
        BuySucess('bank')
    else
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Armurerie', '~o~Armurier', 'Va chercher de l\'argent !', nil, 8)
    end
end)

RegisterNetEvent('WAmmu:BuyMunitions')
AddEventHandler('WAmmu:BuyMunitions', function(label, name, price, quantity)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local getMoney = xPlayer.getAccount('money').money
    local getBank = xPlayer.getAccount('bank').money

    function BuySucess(accountType)
        xPlayer.removeAccountMoney(accountType, price)
        xPlayer.addInventoryItem(name, quantity)
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Armurerie', 'Armurier', 'Vous venez d\'acheter un chargeur de '..label..' pour '..price..'$ ~s~!', nil, 8)    
    end

    if getMoney >= price then
        BuySucess('money')
    elseif getBank >= price then
        BuySucess('bank')
    else
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Armurerie', '~o~Armurier', 'Va chercher de l\'argent !', nil, 8)
    end
end)

RegisterNetEvent('WAmmu:BuyAccessoires')
AddEventHandler('WAmmu:BuyAccessoires', function(label, name, price)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local getMoney = xPlayer.getAccount('money').money
    local getBank = xPlayer.getAccount('bank').money

    function BuySucess(accountType)
        xPlayer.removeAccountMoney(accountType, price)
        xPlayer.addInventoryItem(name, 1)
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Armurerie', 'Armurier', 'Vous venez d\'acheter 1x~s~ '..label..' pour '..price..'$ ~s~!', nil, 8)
    end

    if getMoney >= price then
        BuySucess('money')
    elseif getBank >= price then
        BuySucess('bank')
    else
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Armurerie', '~o~Armurier', 'Va chercher de l\'argent !', nil, 8)
    end
end)