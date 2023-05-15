print("Installation script in development")
if not fs.exists("/MelonOS/functions/GitGet.lua") then
	local gitgetcode = http.get("https://raw.githubusercontent.com/SorisCoding/MelonOS/MelonOS/MelonOS_Files/GitGet.lua")
	local gitgetfile = fs.open("/MelonOS/System/GitGet.lua", "w")
end
