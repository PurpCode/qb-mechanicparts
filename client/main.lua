local QBCore = exports['qb-core']:GetCoreObject()
local BackEngineVehicles = { 'ninef', 'adder', 'vagner', 't20', 'infernus', 'zentorno', 'reaper', 'comet2', 'comet3', 'jester', 'jester2', 
'cheetah', 'cheetah2', 'prototipo', 'turismor', 'pfister811', 'ardent', 'nero', 'nero2', 'tempesta', 'vacca', 'bullet', 'osiris', 'entityxf', 
'turismo2', 'fmj', 're7b', 'tyrus', 'italigtb', 'penetrator', 'monroe', 'ninef2', 'stingergt', 'surfer', 'surfer2', 'comet3', }

--------------------------------------------------
------ESSENTIAL CODING / DONT MESS WITH THIS------
--------------------------------------------------
isLoggedIn = true
PlayerJob = {}
local onDuty = true

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == Config.Job then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)
RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)
RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)
local function saveVehicle()
    local plyPed = PlayerPedId()
    local veh = QBCore.Functions.GetClosestVehicle()
    local vehicleMods = {
        mods = {},
    }
    vehicleMods.mods[11] = GetVehicleMod(veh,11)
    vehicleMods.mods[12] = GetVehicleMod(veh,12)
    vehicleMods.mods[13] = GetVehicleMod(veh,13)
    vehicleMods.mods[15] = GetVehicleMod(veh,15)
    vehicleMods.mods[18] = IsToggleModOn(veh, 18)

local myCar = QBCore.Functions.GetVehicleProperties(veh)
    TriggerServerEvent('updateVehicle',myCar)
end
function IsBackEngine(vehModel)
    for _, model in pairs(BackEngineVehicles) do
        if GetHashKey(model) == vehModel then
            return true
        end
    end
    return false
end

--^^^^^^^^^^^^^^^DONT TOUCH ABOVE THIS LINE^^^^^^^^^^^^^^^--


--------------------------
------PARTS CRAFTING------
--------------------------

------ENGINE------
------------------
RegisterNetEvent('craft:engine0')
AddEventHandler("craft:engine0", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_engine0", "Building Stock Engine", math.random(25000, 50000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:engine0")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "engine0")
end)

RegisterNetEvent('craft:engine1')
AddEventHandler("craft:engine1", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_engine1", "Building Engine", math.random(25000, 50000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:engine1")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "engine1")
end)

RegisterNetEvent('craft:engine2')
AddEventHandler("craft:engine2", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_engine2", "Building Engine", math.random(25000, 50000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:engine2")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "engine2")
end)

RegisterNetEvent('craft:engine3')
AddEventHandler("craft:engine3", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_engine3", "Building Engine", math.random(25000, 50000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:engine3")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "engine3")
end)

RegisterNetEvent('craft:engine4')
AddEventHandler("craft:engine4", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_engine4", "Building Engine", math.random(25000, 50000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:engine4")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "engine4")
end)

-- BRAKES
RegisterNetEvent('craft:brake0')
AddEventHandler("craft:brake0", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_brake0", "Building Stock Brakes", math.random(15000, 35000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:brake0")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "brake0")
end)

RegisterNetEvent('craft:brake1')
AddEventHandler("craft:brake1", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_brake1", "Building Brakes", math.random(15000, 35000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:brake1")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "brake1")
end)

RegisterNetEvent('craft:brake2')
AddEventHandler("craft:brake2", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_brake2", "Building Brakes", math.random(15000, 35000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:brake2")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "brake2")
end)

RegisterNetEvent('craft:brake3')
AddEventHandler("craft:brake3", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_brake3", "Building Brakes", math.random(15000, 35000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:brake3")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "brake3")
end)

RegisterNetEvent('craft:transmission0')
AddEventHandler("craft:transmission0", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_transmission0", "Building Transmission", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:transmission0")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "transmission0")
end)

RegisterNetEvent('craft:transmission1')
AddEventHandler("craft:transmission1", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_transmission1", "Building Transmission", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:transmission1")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "transmission1")
end)

RegisterNetEvent('craft:transmission2')
AddEventHandler("craft:transmission2", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_transmission2", "Building Transmission", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:transmission2")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "transmission2")
end)

RegisterNetEvent('craft:transmission3')
AddEventHandler("craft:transmission3", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_transmission3", "Building Transmission", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:transmission3")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "transmission3")
end)

RegisterNetEvent('craft:suspension0')
AddEventHandler("craft:suspension0", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_suspension0", "Building Suspension", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:suspension0")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "suspension0")
end)

RegisterNetEvent('craft:suspension1')
AddEventHandler("craft:suspension1", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_suspension1", "Building Suspension", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:suspension1")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "suspension1")
end)

RegisterNetEvent('craft:suspension2')
AddEventHandler("craft:suspension2", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_suspension2", "Building Suspension", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:suspension2")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "suspension2")
end)

RegisterNetEvent('craft:suspension3')
AddEventHandler("craft:suspension3", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_suspension3", "Building Suspension", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:suspension3")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "suspension3")
end)

RegisterNetEvent('craft:suspension4')
AddEventHandler("craft:suspension4", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_suspension4", "Building Suspension", math.random(25000, 55000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:suspension4")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "suspension4")
end)

-- TURBO
RegisterNetEvent('craft:turbo0')
AddEventHandler("craft:turbo0", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_turbo0", "Building Turbo Remover", math.random(25000, 45000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:turbo0")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "turbo0")
end)

RegisterNetEvent('craft:turbo1')
AddEventHandler("craft:turbo1", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
    QBCore.Functions.Progressbar("craft_turbo1", "Building Turbo", math.random(25000, 45000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent("craft:turbo1")
            else
                QBCore.Functions.Notify("Failed.", "error")
            end
        end, 1, 26) -- NumberOfCircles, MS
    end, function()
        QBCore.Functions.Notify("Cancelled.", "error")
    end, "turbo1")
end)

-- WINDOW TINTING (TEST) WORKING ON 
RegisterNetEvent('craft:windowtint0')
AddEventHandler("craft:windowtint0", function()
    QBCore.Functions.Progressbar("craft_windowtint0", "Setting Window Tint...", 11000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,10)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("craft:windowtint0")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('craft:harness')
AddEventHandler("craft:harness", function()
    QBCore.Functions.Progressbar("craft_harness", "Building Harness Kit...", 11000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,10)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("craft:harness")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('craft:repairkit')
AddEventHandler("craft:repairkit", function()
    QBCore.Functions.Progressbar("craft_repairkit", "Grabbing Tools...", 11000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,10)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("craft:repairkit")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('craft:advlockpick')
AddEventHandler("craft:advlockpick", function()
    QBCore.Functions.Progressbar("craft_advlockpick", "Making Lockpick Kit...", 11000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,10)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("craft:advlockpick")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

------------------------------
------PARTS INSTALLATION------
------------------------------

------ENGINE------
------------------
RegisterNetEvent('qb-mechanicparts:E0')
AddEventHandler('qb-mechanicparts:E0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
--     local trunkpos = false
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                  if engine ~= 0 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
-- 			    trunkpos = true
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine0"], "remove")
                                    QBCore.Functions.Notify("Engine installed.", "success")
                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "engine0")
-- 				if trunkpos then
-- 					SetVehicleDoorShut(vehicle, 5, false)
-- 				else
-- 					SetVehicleDoorShut(vehicle, 4, false)
-- 				end
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock engine is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:E1')
AddEventHandler('qb-mechanicparts:E1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if engine ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine1"], "remove")
                                    QBCore.Functions.Notify("Engine installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "engine1")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Engine upgrade 1 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:E2')
AddEventHandler('qb-mechanicparts:E2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if engine ~= 1 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine2"], "remove")
                                    QBCore.Functions.Notify("Engine installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "engine2")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Engine upgrade 2 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:E3')
AddEventHandler('qb-mechanicparts:E3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if engine ~= 2 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine3"], "remove")
                                    QBCore.Functions.Notify("Engine installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "engine3")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Engine upgrade 3 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)


RegisterNetEvent('qb-mechanicparts:E4')
AddEventHandler('qb-mechanicparts:E4', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if engine ~= 3 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, 3, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine4", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine4"], "remove")
                                    QBCore.Functions.Notify("Engine installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "engine4")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Engine upgrade 4 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

--brakes
RegisterNetEvent('qb-mechanicparts:B0')
AddEventHandler('qb-mechanicparts:B0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    brake = GetVehicleMod(veh, 12)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if brake ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.3, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.3, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Brakes", "Installing Stock Brakes", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 12, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "brake0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["brake0"], "remove")
                                    QBCore.Functions.Notify("Brakes installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "brake0")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock brakes are already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:B1')
AddEventHandler('qb-mechanicparts:B1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    brake = GetVehicleMod(veh, 12)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if brake ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.3, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.3, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Brakes", "Installing Brakes", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 12, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "brake1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["brake1"], "remove")
                                    QBCore.Functions.Notify("Brakes installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "brake1")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Brake upgrade 1 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:B2')
AddEventHandler('qb-mechanicparts:B2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    brake = GetVehicleMod(veh, 12)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if brake ~= 1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.3, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.3, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Brakes", "Installing Brakes", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 12, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "brake2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["brake2"], "remove")
                                    QBCore.Functions.Notify("Brakes installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "brake2")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Brake uprade 2 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:B3')
AddEventHandler('qb-mechanicparts:B3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    brake = GetVehicleMod(veh, 12)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if brake ~= 2 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.3, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.3, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Brakes", "Installing Brakes", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 12, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "brake3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["brake3"], "remove")
                                    QBCore.Functions.Notify("Brakes installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "brake3")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Brake uprade 3 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

-- --Transmission
RegisterNetEvent('qb-mechanicparts:T0')
AddEventHandler('qb-mechanicparts:T0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    transmission = GetVehicleMod(veh, 13)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if transmission ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"weld"})
                                QBCore.Functions.Progressbar("Transmission", "Installing Transmission", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 13, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "transmission0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["transmission0"], "remove")
                                    QBCore.Functions.Notify("Transmission installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "transmission0")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock transmission is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:T1')
AddEventHandler('qb-mechanicparts:T1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    transmission = GetVehicleMod(veh, 13)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if transmission ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"weld"})
                                QBCore.Functions.Progressbar("Transmission", "Installing Transmission", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 13, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "transmission1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["transmission1"], "remove")
                                    QBCore.Functions.Notify("Transmission installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "transmission1")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Transmission upgrade 1 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:T2')
AddEventHandler('qb-mechanicparts:T2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    transmission = GetVehicleMod(veh, 13)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if transmission ~= 1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"weld"})
                                QBCore.Functions.Progressbar("Transmission", "Installing Transmission", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 13, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "transmission2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["transmission2"], "remove")
                                    QBCore.Functions.Notify("Transmission installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "transmission2")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Transmission upgrade 2 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:T3')
AddEventHandler('qb-mechanicparts:T3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    transmission = GetVehicleMod(veh, 13)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if transmission ~= 2 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"weld"})
                                QBCore.Functions.Progressbar("Transmission", "Installing Transmission", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 13, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "transmission3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["transmission3"], "remove")
                                    QBCore.Functions.Notify("Transmission installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "transmission3")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Transmission upgrade 3 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

-- --Suspension
RegisterNetEvent('qb-mechanicparts:S0')
AddEventHandler('qb-mechanicparts:S0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if suspension ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension0"], "remove")
                                    QBCore.Functions.Notify("Suspension installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "suspension0")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock suspension is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:S1')
AddEventHandler('qb-mechanicparts:S1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if suspension ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension1"], "remove")
                                    QBCore.Functions.Notify("Suspension installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "suspension1")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Suspension upgrade 1 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:S2')
AddEventHandler('qb-mechanicparts:S2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if suspension ~= 1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension2"], "remove")
                                    QBCore.Functions.Notify("Suspension installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "suspension2")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Suspension upgrade 2 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:S3')
AddEventHandler('qb-mechanicparts:S3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if suspension ~= 2 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension3"], "remove")
                                    QBCore.Functions.Notify("Suspension installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "suspension3")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Suspension upgrade 3 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:S4')
AddEventHandler('qb-mechanicparts:S4', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if suspension ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            --[[ SetVehicleDoorOpen(vehicle, 5, false, false) ]]
                        else
                            --[[ SetVehicleDoorOpen(vehicle, 4, false, false) ]]
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, 3, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension4", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension4"], "remove")
                                    QBCore.Functions.Notify("Suspension installed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "suspension4")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Suspension upgrade 4 is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

-- --Suspension
RegisterNetEvent('qb-mechanicparts:Turbo0')
AddEventHandler('qb-mechanicparts:Turbo0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    turbo = IsToggleModOn(veh, 18)
    print(turbo)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if turbo ~= -1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                                QBCore.Functions.Progressbar("Turbo", "Removing Turbo", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 18, false)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "turbo0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["turbo0"], "remove")
                                    QBCore.Functions.Notify("Turbo removed.", "success")

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "turbo0")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Turbo is already removed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:Turbo1')
AddEventHandler('qb-mechanicparts:Turbo1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    turbo = IsToggleModOn(veh, 18)
    print(turbo)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if turbo ~= -1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                                QBCore.Functions.Progressbar("Turbo", "Installing Turbo", math.random(45000, 60000), false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {}, {}, {}, function() -- Done
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 18, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "turbo1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["turbo1"], "remove")
                                    QBCore.Functions.Notify("Turbo installed.", "success")
                                    

                                end, function()
                                    QBCore.Functions.Notify("Cancelled.", "error")
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                end, "turbo1")
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Turbo is already installed.", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action.", "error")
        end
end)

--WINDOW TINT (TESTING)
RegisterNetEvent('qb-mechanicparts:WT0')
AddEventHandler('qb-mechanicparts:WT0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    tint = GetVehicleMod(veh, 46)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if tint ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Tint", "Removing Window Tint...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleWindowTint(vehicle, 0)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "windowtint0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["windowtint0"], "remove")
                                    QBCore.Functions.Notify("Stock Tint Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock Tint already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:WT1')
AddEventHandler('qb-mechanicparts:WT1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    tint = GetVehicleMod(veh, 46)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if tint ~= 1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Tint", "Installing Window Tint...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleWindowTint(vehicle, 1)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "windowtint1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["windowtint1"], "remove")
                                    QBCore.Functions.Notify("Stage 1 Tint Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stage 1 Tint already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:WT2')
AddEventHandler('qb-mechanicparts:WT2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    tint = GetVehicleMod(veh, 46)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if tint ~= 2 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Tint", "Installing Window Tint...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleWindowTint(vehicle, 2)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "windowtint2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["windowtint2"], "remove")
                                    QBCore.Functions.Notify("Stage 2 Tint Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stage 2 Tint already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)


RegisterNetEvent('qb-mechanicparts:WT3')
AddEventHandler('qb-mechanicparts:WT3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    tint = GetVehicleMod(veh, 46)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if tint ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Tint", "Installing Window Tint...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleWindowTint(vehicle, 3)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "windowtint3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["windowtint3"], "remove")
                                    QBCore.Functions.Notify("Stage 3 Tint Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stage 3 Tint already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)


RegisterNetEvent('qb-mechanicparts:HLS')  
AddEventHandler('qb-mechanicparts:HLS', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 255)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "stock", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["stock"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL0')  
AddEventHandler('qb-mechanicparts:HL0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 0)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "white", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["white"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL1')  
AddEventHandler('qb-mechanicparts:HL1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 1)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "blue", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["blue"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL2')  
AddEventHandler('qb-mechanicparts:HL2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 2)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "electricblue", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["electricblue"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL3')  
AddEventHandler('qb-mechanicparts:HL3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 3)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "mintgreen", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["mintgreen"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL4')  
AddEventHandler('qb-mechanicparts:HL4', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 4)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "limegreen", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["limegreen"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL5')  
AddEventHandler('qb-mechanicparts:HL5', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 5)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "yellow", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["yellow"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL6')  
AddEventHandler('qb-mechanicparts:HL6', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 6)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "goldenshower", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["goldenshower"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL7')  
AddEventHandler('qb-mechanicparts:HL7', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 7)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "orange", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["orange"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL8')  
AddEventHandler('qb-mechanicparts:HL8', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 8)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "red", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["red"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL9')  
AddEventHandler('qb-mechanicparts:HL9', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 9)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "ponypink", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["ponypink"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL10')  
AddEventHandler('qb-mechanicparts:HL10', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 10)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "hotpink", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["hotpink"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL11')  
AddEventHandler('qb-mechanicparts:HL11', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 11)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "purple", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["purple"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:HL12')  
AddEventHandler('qb-mechanicparts:HL12', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    headlight = GetVehicleMod(veh, 22)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if headlight ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("headlight", "Installing Headlights...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 22, true) -- toggle xenon
                                    SetVehicleHeadlightsColour(vehicle, 12)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "blacklight", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["blacklight"], "remove")
                                    QBCore.Functions.Notify("Headlights installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("This colour is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:Spoiler0')
AddEventHandler('qb-mechanicparts:Spoiler0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
--     local trunkpos = false
    spoiler = GetVehicleMod(veh, 0)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                  if spoiler ~= -1 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
-- 			    trunkpos = true
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                QBCore.Functions.Progressbar("spoiler", "Attaching Spoiler...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 0, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "spoiler0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["spoiler0"], "remove")
                                    QBCore.Functions.Notify("Spoiler successfully attached.", "success")
                                end)
-- 				if trunkpos then
-- 					SetVehicleDoorShut(vehicle, 5, false)
-- 				else
-- 					SetVehicleDoorShut(vehicle, 4, false)
-- 				end
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("That spoiler is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)
RegisterNetEvent('qb-mechanicparts:Spoiler1')
AddEventHandler('qb-mechanicparts:Spoiler1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    spoiler = GetVehicleMod(veh, 0)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if spoiler ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("spoiler", "Attaching Spoiler...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 0, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "spoiler1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["spoiler1"], "remove")
                                    QBCore.Functions.Notify("Spoiler successfully attached.", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("That spoiler is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:Spoiler2')
AddEventHandler('qb-mechanicparts:Spoiler2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    spoiler = GetVehicleMod(veh, 0)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if spoiler ~= 1 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("spoiler", "Attaching Spoiler...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 0, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "spoiler2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["spoiler2"], "remove")
                                    QBCore.Functions.Notify("Spoiler successfully attached.", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("That spoiler is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:Spoiler3')
AddEventHandler('qb-mechanicparts:Spoiler3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    spoiler = GetVehicleMod(veh, 0)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if spoiler ~= 2 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("spoiler", "Attaching Spoiler...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 0, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "spoiler3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["spoiler3"], "remove")
                                    QBCore.Functions.Notify("Spoiler successfully attached.", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("That spoiler is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)


RegisterNetEvent('qb-mechanicparts:Spoiler4')
AddEventHandler('qb-mechanicparts:Spoiler4', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    spoiler = GetVehicleMod(veh, 0)
        if PlayerJob.name == Config.Job then
            -- if onDuty then
                if spoiler ~= 3 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("spoiler", "Attaching Spoiler...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 0, 3, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "spoiler4", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["spoiler4"], "remove")
                                    QBCore.Functions.Notify("Spoiler successfully attached.", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("That spoiler is already installed...", "error")
                end
            -- else
            --     QBCore.Functions.Notify("You need to be on duty!", "error")
            -- end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

-------------------------------------------------------
------QB MENU PARTS CRAFTING WITH RECIPES DETAILS------
-------------------------------------------------------

---------- CRAFTING MENU
RegisterNetEvent('craft:mechanicparts', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Mechanic Toolbox",
            txt = "",
            isMenuHeader = true
        },
        {
            id = 2,
            header = "Engine Upgrades", -- FINISHED
            txt = "View engine upgrade list.",
            params = {
                event = "craft:engines",
            }
        },
        {
            id = 3,
            header = "Brake Upgrades", -- FINISHED
            txt = "View brake upgrade list.",
            params = {
                event = "craft:brakes",
            }
        },
        {
            id = 4,
            header = "Transmission Upgrades", -- FINISHED (FIX upgrade 1)
            txt = "View transmission upgrade list.",
            params = {
                event = "craft:transmissions",
            }
        },
        {
            id = 5,
            header = "Suspension Upgrades", -- FINISHED
            txt = "View suspension upgrade list.",
            params = {
                event = "craft:suspensions",
            }
        },
        {
            id = 6,
            header = "Turbo Options", -- FINISHED
            txt = "View turbo option list.",
            params = {
                event = "craft:turbos",
            }
        },
--[[         {
            id = 7,
            header = "Tools & Equipment",
            txt = "View tools & equipment list.",
            params = {
                event = "craft:repairkit1",
            }
        }, ]]
        {
            id = 7,
            header = "Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)

---------- ENGINE MENU
RegisterNetEvent('craft:engines', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Stock Engine", -- FINISHED
            txt = " 1x metalscrap, 1x rubber, 1x iron, 1x plastic ",
            params = {
                event = "craft:engine0",
            }
        },
        {
            id = 2,
            header = "Engine Upgrade 1", -- FINISHED
            txt = " 2x metalscrap, 2x rubber, 2x iron, 2x plastic ",
            params = {
                event = "craft:engine1",
            }
        },
        {
            id = 3,
            header = "Engine Upgrade 2", -- FINISHED
            txt = " 3x metalscrap, 3x rubber, 3x iron, 3x plastic ",
            params = {
                event = "craft:engine2",
            }
        },
        {
            id = 4,
            header = "Engine Upgrade 3", -- FINISHED
            txt = " 4x metalscrap, 4x rubber, 4x iron, 4x plastic ",
            params = {
                event = "craft:engine3",
            }
        },
        {
            id = 5,
            header = "Engine Upgrade 4", -- FINISHED
            txt = " 5x metalscrap, 5x rubber, 5x iron, 5x plastic, 5x aluminium ",
            params = {
                event = "craft:engine4",
            }
        },
        {
            id = 6,
            header = "Back",
            txt = "",
            params = {
                event = "craft:mechanicparts",
            }
        },
    })
end)

---------- BRAKES MENU
RegisterNetEvent('craft:brakes', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Stock Brakes", -- COMPLETED
            txt = "1x metalscrap, 1x rubber, 1x iron",
            params = {
                event = "craft:brake0",
            }
        },
        {
            id = 2,
            header = "Brake Upgrade 1", -- COMPLETED
            txt = "2x metalscrap, 2x rubber, 2x iron",
            params = {
                event = "craft:brake1",
            }
        },
        {
            id = 3,
            header = "Brake Upgrade 2", -- COMPLETED
            txt = "3x metalscrap, 3x rubber, 3x iron",
            params = {
                event = "craft:brake2",
            }
        },
        {
            id = 4,
            header = "Brake Upgrade 3", -- COMPLETED
            txt = "4x metalscrap, 4x rubber, 4x iron",
            params = {
                event = "craft:brake3",
            }
        },
        {
            id = 5,
            header = "Back",
            txt = "",
            params = {
                event = "craft:mechanicparts",
            }
        },
    })
end)

---------- TRANSMISSION MENU
RegisterNetEvent('craft:transmissions', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Stock Transmission", -- FINISHED
            txt = "1x metalscrap, 1x rubber, 1x plastic, 1x steel, 1x iron",
            params = {
                event = "craft:transmission0",
            }
        },
--[[         {
            id = 2,
            header = "Transmission Upgrade 1 (DONT USE)", -- DONT USE
            txt = "2x metalscrap, 2x rubber, 2x plastic, 2x steel, 2x iron",
            params = {
                event = "craft:transmission1",
            }
        }, ]]
        {
            id = 2,
            header = "Transmission Upgrade 2", -- complete // need to fix prop sticking to hand
            txt = "3x metalscrap, 3x rubber, 3x plastic, 3x steel, 3x iron",
            params = {
                event = "craft:transmission2",
            }
        },
        {
            id = 3,
            header = "Transmission Upgrade 3", -- complete // need to fix prop sticking to hand
            txt = "4x metalscrap, 4x rubber, 4x plastic, 4x steel, 4x iron",
            params = {
                event = "craft:transmission3",
            }
        },
        {
            id = 4,
            header = "Back",
            txt = "",
            params = {
                event = "craft:mechanicparts",
            }
        },
    })
end)

---------- SUSPENSION MENU
RegisterNetEvent('craft:suspensions', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Stock Suspension", -- WORKING ON
            txt = "1x metalscrap, 1x rubber, 1x plastic, 1x steel, 1x iron",
            params = {
                event = "craft:suspension0",
            }
        },
        {
            id = 2,
            header = "Suspension Upgrade 1",
            txt = "2x metalscrap, 2x rubber, 2x plastic, 2x steel, 2x iron",
            params = {
                event = "craft:suspension1",
            }
        },
        {
            id = 3,
            header = "Suspension Upgrade 2",
            txt = "3x metalscrap, 3x rubber, 3x plastic, 3x steel, 3x iron",
            params = {
                event = "craft:suspension2",
            }
        },
        {
            id = 4,
            header = "Suspension Upgrade 3",
            txt = "4x metalscrap, 4x rubber, 4x plastic, 4x steel, 4x iron",
            params = {
                event = "craft:suspension3",
            }
        },
        {
            id = 5,
            header = "Suspension Upgrade 4",
            txt = "5x metalscrap, 5x rubber, 5x plastic, 5x steel, 5x iron",
            params = {
                event = "craft:suspension4",
            }
        },
        {
            id = 6,
            header = "Back",
            txt = "",
            params = {
                event = "craft:mechanicparts",
            }
        },
    })
end)

---------- TURBO MENU
RegisterNetEvent('craft:turbos', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Turbo Removal Kit (Downgrade)",
            txt = "1x rubber, 1x iron, 1x metalscrap",
            params = {
                event = "craft:turbo0",
            }
        },
        {
            id = 2,
            header = "Turbo Installment Kit (Upgrade)",
            txt = "2x rubber, 2x iron, 2x metalscrap",
            params = {
                event = "craft:turbo1",
            }
        },
        {
            id = 3,
            header = "Back",
            txt = "",
            params = {
                event = "craft:mechanicparts",
            }
        },
    })
end)

---------- TOOLS MENU
--[[ RegisterNetEvent('craft:repairkit1', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Repair Kit",
            txt = "3x MetalScrap | 2x Rubber | 2x Plastic | 2x Aluminum | 2x Steel",
            params = {
                event = "craft:repairkit",
            }
        },
        {
            id = 2,
            header = "Advanced Lockpick",
            txt = "2x MetalScrap | 1x Rubber | 1x Plastic | 1x Aluminum",
            params = {
                event = "craft:advlockpick",
            }
        },
        {
            id = 3,
            header = "Harness Kit",
            txt = "5x MetalScrap | 3x Rubber | 3x Plastic | 3x Aluminum | 2x Steel",
            params = {
                event = "craft:harness",
            }
        },
        {
            id = 4,
            header = "Main Menu",
            txt = "Back to main menu",
            params = {
                event = "craft:mechanicparts",
            }
        },
    })
end) ]]


-------------------------------------------------
------QB MENU MOD CHECKS AND VEHICLE HEALTH------
-------------------------------------------------

RegisterNetEvent('craft:vehmenu', function()
    local ped = PlayerPedId()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local plate = QBCore.Functions.GetPlate(vehicle)

    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Vehicle: " .. plate,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 2,
            header = "Vehicle Status",
            txt = "View vehicle health and status",
            params = {
                event = "craft:vehstatus",
            }
        },
        {
            id = 3,
            header = "Vehicle Modifications",
            txt = "View vehicles modifications and upgrades",
            params = {
                event = "craft:vehmods",
            }
        },
        {
            id = 4,
            header = "Close",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },
    })
end)

-- VEHICLE MODS (DON'T MESS WITH THESE NUMBERS!)
RegisterNetEvent('craft:vehmods', function()
    local ped = PlayerPedId()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local plate = QBCore.Functions.GetPlate(vehicle)
    local statusList = exports['qb-mechanicjob']:GetVehicleStatusList(plate)
    local fuel = exports['ps-fuel']:GetFuel(vehicle)
    local turbo = "N/A"
    if IsToggleModOn(vehicle, 18) == 1 then
        turbo = "Turbo"
    end

    local engine = "Stock"
    local engineMod = GetVehicleMod(vehicle, 11)
    if engineMod > -1 then
        if engineMod == -1 then
            engine = "Stock"
        elseif engineMod == 0 then    
            engine = "Stage 1 Upgrade"
        elseif engineMod == 1 then
            engine = "Stage 2 Upgrade"
        elseif engineMod == 2 then
            engine = "Stage 3 Upgrade"
        elseif engineMod == 3 then
            engine = "Stage 4 Upgrade"
        end
    end

    local brakes = "Stock"
    local brakesMod = GetVehicleMod(vehicle, 12)
    if brakesMod > -1 then
        if brakesMod == -1 then
            brakes = "Stock"
        elseif brakesMod == 0 then
            brakes = "Stage 1 Upgrade"    
        elseif brakesMod == 1 then
            brakes = "Stage 2 Upgrade"
        elseif brakesMod == 2 then
            brakes = "Stage 3 Upgrade"
        end  
    end

    local transmission = "Stock"
    local transMod = GetVehicleMod(vehicle, 13)
    if transMod > 0 then
        if transMod == 0 then
            transmission = "Stock"
        elseif transMod == 0 then    
            transmission = "Stage 1 Upgrade"
        elseif transMod == 1 then
            transmission = "Stage 2 Upgrade"
        elseif transMod == 2 then
            transmission = "Stage 3 Upgrade"
        end   
    end

    local suspension = "Stock"
    local susMod = GetVehicleMod(vehicle, 15)
    if susMod > -1 then
        if susMod == -1 then
            suspension = "Stock"
        elseif susMod == 0 then
            suspension = "Stage 1 Upgrade"    
        elseif susMod == 1 then
            suspension = "Stage 2 Upgrade"
        elseif susMod == 2 then
            suspension = "Stage 3 Upgrade"
        elseif susMod == 3 then
            suspension = "Stage 4 Upgrade"
        end 
    end

    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Vehicle: " .. plate,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 2,
            header = "Engine: ".. engine,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 3,
            header = "Transmission: ".. transmission,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 4,
            header = "Suspension: ".. suspension,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 5,
            header = "Brakes: ".. brakes,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 6,
            header = "Turbo: ".. turbo,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 7,
            header = "Back",
            txt = "",
            params = {
                event = "craft:vehmenu",
            }
        },
    })
end)

-- VEHICLE HEALTH/STATUS
RegisterNetEvent('craft:vehstatus', function()

    local statusList = exports['qb-mechanicjob']:GetVehicleStatusList(plate)
    fuel = exports['ps-fuel']:GetFuel(vehicle)
    vehicle = QBCore.Functions.GetClosestVehicle()
    plate = GetVehicleNumberPlateText(vehicle)
    engineHealth = GetVehicleEngineHealth(vehicle)
    vehTemp = GetVehicleEngineTemperature(vehicle)
    bodyHealth = GetVehicleBodyHealth(vehicle)
    fuelHealth = exports['ps-fuel']:GetFuel(vehicle)
    tankHealth = GetVehiclePetrolTankHealth(vehicle)

    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Engine Health",
            txt = "Status: " .. math.ceil(engineHealth / 10) .. "% / 100.0%",
        },
        {
            id = 2,
            header = "Body Condition",
            txt = "Status: " .. math.ceil(bodyHealth / 10) .. "% / 100.0%",
        },
        {
            id = 3,
            header = "Fuel Level",
            txt = "Status: " .. math.ceil(fuelHealth) .. ".0% / 100.0%",
        },
        {
            id = 4,
            header = "Engine Temperature",
            txt = "Status: " .. math.ceil(vehTemp) .. "° C",
        }, 

        {
            id = 5,
            header = "<-- Back",
            txt = "",
            params = {
                event = "craft:vehmenu",
            }
        },
    })
end)
