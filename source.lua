--hi my name is hazeldox and i made u your easy webhook cash or something logger (values ig)
--these values below are the only ones you need to worry abt

local int_time = 300 --Amount of time before it sends the webhook displaying values in seconds, search up minutes to seconds or something to find it |
--10 mins = 600
--5 mins = 300
--4 mins = 240
--3 mins = 180
--2 mins = 120

local webhook_link = "WEBHOOK_LINK_HERE"
local value_logged = game:GetService("ReplicatedStorage").Cash.???????.Value --change this to your value, use dex to find it in a game
local discordId1 = 743586604559630526
local discordId2 = 0 --put 0 if you dont want a second user
















--nothing else u need to modify
--this works on all executors, i killed the organization because why would you need it

local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
Lib.prompt('Script Loaded', 'Webhooks will be sent every '..int_time..' seconds', 6)
warn("Value Logger Loaded </> Created by Hazeldox")
while task.wait(int_time) do
local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)
local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
        (isexecutorclosure and "Script-Ware V2") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "SirHurt V4") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getreg()['CalamariLuaEnv'] and "Calamari") or
        (unit and "Unit") or
        ("Undetectable")
    return exploit
end

Lib.prompt('Webhook sent', 'The next webhook will be sent in '..int_time..' seconds', 6)


local Content = "<@"..discordId1..">".." <@"..discordId2..">"
local Embed = {
			["title"] = "Cash Report",
			["description"] = "**Cash Suggests:** "..value_logged.." **$**",
			["type"] = "rich",
			["color"] = tonumber(0xffff00),
			["fields"] = {
				{
					["name"] = "__Time__",
					["value"] = string.format('%02d:%02d', Time.hour, Time.min),
					["inline"] = true
				}
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
    Url = webhook_link;
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
end
