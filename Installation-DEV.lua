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
end
