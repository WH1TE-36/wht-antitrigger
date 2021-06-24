Citizen.CreateThread(function()
    for k, v in pairs(Triggers.List) do
            RegisterServerEvent(tostring(v.trigger))
            AddEventHandler(tostring(v.trigger), function()
			local src = source
			local xPlayer = ESX.GetPlayerFromId(src)
				if xPlayer.getJob().name ~= v.job then
					CancelEvent()
					if Config.Kickle Then
			DropPlayer(src, " Trigger Kontroller")
				end
			end
			end)
		end
	end)