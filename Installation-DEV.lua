print("  __  __      _              ___  ____  
 	|  \/  | ___| | ___  _ __  / _ \/ ___| 
 	| |\/| |/ _ \ |/ _ \| '_ \| | | \___ \ 
 	| |  | |  __/ | (_) | | | | |_| |___) |
 	|_|  |_|\___|_|\___/|_| |_|\___/|____/ ")

print("Installation script in development")
if not fs.exists("/MelonOS/functions/GitGet.lua") then
	print("Downloading GitGet")
	local gitgetcode = http.get("https://raw.githubusercontent.com/SorisCoding/MelonOS/MelonOS/MelonOS_Files/GitGet-DEV.lua")
	local gitgetfile = fs.open("/MelonOS/function/GitGet.lua", "w")
	gitgetfile.write(gitgetcode.readAll())
	gitgetfile.close()
	if fs.exists("/MelonOS/function/GitGet.lua") then
		print("GitGet Downloaded")
	end
	local check = http.get("https://raw.githubusercontent.com/SorisCoding/MelonOS/MelonOS/MelonOS_Files/GitGet-DEV.lua")
	local gitgetfile = fs.open("/MelonOS/function/GitGet.lua", "r")
	if not (gitgetfile.readAll() = check.readAll()) then
		print("GitGet  A Update")
end

if not (gitgetfile.readAll() = check.readAll()) then
		print("GitGet  A Update")

if not fs.exists("/MelonOS/functions/OSUI.lua") then
	print("Downloading OSUI")
