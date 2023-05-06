shell.execute("clear")
local SETUP = true
local INSTALLED = false
print("//BCOS Systems Check//")
if fs.exists("/BCOS") then
    print("OS detected")
    local INSTALLED = true
else
    printError("OS not installed, installation required")
    local INSTALLED = false
    print("Would you like to install BCOS? (Y/N)")
    while true do
        local INSTALL = io.read()
        if INSTALL == "Y" then
            print("Installing BCOS")
            shell.execute("clear")
            shell.execute("pastebin","run","FiThEB2N")
            break
        elseif install == "N" then
            print("Exiting BCOS Systems Check")
            break
        else
            print("Y or N")
        end
    end
end
if fs.exists("/BCOS/usr") and INSTALLED then
    print("User files detected, SETUP set to false")
    local SETUP = false
    print("")
    print("Booting BCOS")
    shell.run("/BCOS/BCOS.lua")
elseif SETUP and INSTALLED then
    printError("User files not detected, SETUP set to true")
    local SETUP = true
end
print("")
print("/////////////////////")
print("")