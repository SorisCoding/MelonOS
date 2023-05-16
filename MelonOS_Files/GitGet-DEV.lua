local function gitget(owner,rego,branch,file)
	local valid = http.checkURL("https://raw.githubusercontent.com/" .. owner .. "/" .. repo .. "/" .. branch .. "/" .. flie)
	if valid then
		local res = http.get("https://raw.githubusercontent.com/" .. owner .. "/" .. repo .. "/" .. branch .. "/" .. flie)
	else
		local res = false
	end
	return(res)
end


local function melonget(file)
	local valid = http.checkURL("https://raw.gitusercontent.com/SorisCoding/MelonOS/MelonOS/" .. file)
	if valid then
		local res = http.get("https://raw.gitusercontent.com/SorisCoding/MelonOS/MelonOS/" .. file)
	else
		local res = false
	end
	return(res)
end


local function gitdown(owner,repo,branch,file,path)
	local valid = https.checkURL("https://raw.gitusercontent.com/" .. owner .. "/" .. repo .. "/" .. branch .. "/" .. file)
	if vaild then
		local got = http.get("https://raw.gitusercontent.com/" .. owner .. "/" .. repo .. "/" .. branch .. "/" .. file)
		local fileW = fs.open(path, "w")
		fileW.write(got.readAll())
		fileW.close()
		local res = true
	else
		local res = false
	end
	return(res)
end


local function melondown(file,path)
	local valid = http.checkURL("https://raw.gitusercontent.com/SorisCoding/MelonOS/MelonOS/" .. file)
	if valid then
		local got http.get("https://raw.gitusercontent.com/SorisCoding/MelonOS/MelonOS/" .. file)
		local fileW = fs.open(path, "w")
		fileW.write(got.readAll())
		fileW.close()
		local res = true
	else
		local res = false
	end
	return(res)
end
