shell.execute("clear")
local SETUP = true
local INSTALLED = false
print("//MelonOS Systems Check//")
if fs.exists("/MelonOS") then
    print("MelonOS detected")
    local INSTALLED = true
else
    printError("MelonOS not installed, installation required")
    local INSTALLED = false
    print("Would you like to install MelonOS? (Y/N)")
    while true do
        local INSTALL = io.read()
        if INSTALL == "Y" then
            print("Installing MelonOS")
            shell.execute("clear")
            shell.execute("pastebin","run","FiThEB2N")
            break
        elseif INSTALL == "N" then
            print("Exiting MelonOS Systems Check")
            break
        else
            print("Y or N")
        end
    end
end
if fs.exists("/MelonOS/usr") and INSTALLED then
    print("User files detected, SETUP set to false")
    local SETUP = false
    print("")
    print("Booting MelonOS")
    shell.run("/MelonOS/MelonOS.lua")
elseif SETUP and INSTALLED then
    printError("User files not detected, SETUP set to true")
    local SETUP = true
end
print("")
print("/////////////////////")
print("")
