-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:TOGGLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:Toggle")
AddEventHandler("service:Toggle",function(Service)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.ServiceToggle(source,Passport,Service,false)
	end
end)