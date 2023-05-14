local function gitget(owner,rego,branch,file)
  local valid = http.checkURL("https://raw.githubusercontent.com/" .. owner .. "/" .. repo .. "/" .. branch .. "/" .. flie)
	if valid then
    local res = http.get("https://raw.githubusercontent.com/" .. owner .. "/" .. repo .. "/" .. branch .. "/" .. flie)
    
