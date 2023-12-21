print("  __  __      _              ___  ____  
 	|  \/  | ___| | ___  _ __  / _ \/ ___| 
 	| |\/| |/ _ \ |/ _ \| '_ \| | | \___ \ 
 	| |  | |  __/ | (_) | | | | |_| |___) |
 	|_|  |_|\___|_|\___/|_| |_|\___/|____/ ")

print("Installation script in development")
local GitGetExists = False
if not fs.exists("/MelonOS/functions/GitGet.lua") then
	print("Not Found: GitGet")
	local GitGetExists = False
	
	print("Downloading: GitGet")
	local gitgetcode = http.get("https://raw.githubusercontent.com/SorisCoding/MelonOS/MelonOS/MelonOS_Files/GitGet-DEV.lua")
	local gitgetfile = fs.open("/MelonOS/function/GitGet.lua", "w")
	
	gitgetfile.write(gitgetcode.readAll())
	gitgetfile.close()
	
	if fs.exists("/MelonOS/function/GitGet.lua") then
		print("Downloaded: GitGet")
	end
	
	local check = http.get("https://raw.githubusercontent.com/SorisCoding/MelonOS/MelonOS/MelonOS_Files/GitGet-DEV.lua")
	local gitgetfile = fs.open("/MelonOS/function/GitGet.lua", "r")
	
	if not (gitgetfile.readAll() = check.readAll()) then
		print("Might need to update: GitGet")
	end
else
	print("Found: GitGet")
	local GitGetExists = True
end

print("Checking for updates: GitGet")
if not (gitgetfile.readAll() = check.readAll()) and GitGetExists then
	print("Might need to update: GitGet")
	print("Update script not made for: GitGet")
end

local OSUIExists = false
if not fs.exists("/MelonOS/functions/OSUI.lua") then
	print("Not Found: OSUI")
	local OSUIExists = false
	print("Download script not made for: OSUI")
end
