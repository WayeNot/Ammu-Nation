ESX = exports['es_extended']:getSharedObject()

local WAmmu = RageUI.CreateMenu('Armurerie', 'Intéraction ..')
local WArmesBlanches = RageUI.CreateSubMenu(WAmmu, 'Armurerie', 'Intéraction ..')
local WArmesPoing = RageUI.CreateSubMenu(WAmmu, 'Armurerie', 'Intéraction ..')
local WMunitions = RageUI.CreateSubMenu(WAmmu, 'Munitions', 'Intéraction ..')
local WAccessoires = RageUI.CreateSubMenu(WAmmu, 'Armurerie', 'Intéraction ..')

WAmmu.Closed = function()
    OpenMenu = false
end

function OpenArmurerie()
    if OpenMenu then
        RageUI.Visible(WAmmu, false)
        OpenMenu = false
        return
    else
        RageUI.Visible(WAmmu, true)
        OpenMenu = true
            CreateThread(function()
            while OpenMenu do
                RageUI.IsVisible(WAmmu, function()
                    RageUI.Button('🔪 - Armes Blanches', nil, {RightLabel = '~l~→→→'},true, {
                    }, WArmesBlanches)

                    RageUI.Button('🔫 - Armes de Poing', nil, {RightLabel = '~l~→→→'},true, {
                    }, WArmesPoing)

                    RageUI.Button('🧨 - Accessoires', nil, {RightLabel = '~l~→→→'},true, {
                    }, WAccessoires)

                    RageUI.Button('🪙 - Munitions', '~y~Assez de munitions pour un chargeur !', {RightLabel = '~l~→→→'},true, {
                    }, WMunitions)
                end)

                RageUI.IsVisible(WArmesBlanches, function()

                    RageUI.Separator('~l~↓ ~o~Armes Blanches ~l~↓')

                    for k,v in pairs(WayeArmurerie.ArmesBlanches) do
                        RageUI.Button(v.label, nil, {RightLabel = '~g~'..v.price..' $'},true, {
                            onSelected = function()
                                TriggerServerEvent('WAmmu:BuyArmesBlanches', v.label, v.name, v.price)
                                RageUI.CloseAll()
                            end
                        })
                    end
                    
                end)

                RageUI.IsVisible(WArmesPoing, function()
                    RageUI.Separator('~l~↓ ~r~Armes de Poing~l~↓')

                    for k,v in pairs(WayeArmurerie.ArmesDePoing) do
                        RageUI.Button(v.label, nil, {RightLabel = '~g~'..v.price..' $'},true, {
                            onSelected = function()
                                TriggerServerEvent('WAmmu:BuyArmesPoing', v.label, v.name, v.price)
                                RageUI.CloseAll()
                            end
                        })
                    end
                end)

                RageUI.IsVisible(WMunitions, function()

                    RageUI.Separator('~l~↓ ~m~Munitions ~l~↓')

                    for k,v in pairs(WayeArmurerie.Munitions) do
                        RageUI.Button(v.label, nil, {RightLabel = '~r~$'..v.price},true, {
                            onSelected = function()
                                TriggerServerEvent('WAmmu:BuyMunitions', v.label, v.name, v.price, v.quantity)
                                RageUI.CloseAll()
                            end
                        })
                    end
                end)

                RageUI.IsVisible(WAccessoires, function()
                    RageUI.Separator('~l~↓ ~y~Accessoires ~l~↓')

                    for k,v in pairs(WayeArmurerie.Accessoires) do
                        RageUI.Button(v.label, nil, {RightLabel = '~r~$'..v.price},true, {
                            onSelected = function()
                                TriggerServerEvent('WAmmu:BuyAccessoires', v.label, v.name, v.price)
                                RageUI.CloseAll()
                            end
                        })
                    end
                end)
            Wait(0)
            end
        end)
    end
end