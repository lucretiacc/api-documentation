-- adding a checkbox
menu.AddCheckbox("Chams fade out")

-- defining cvar as "cl_ragdoll_physics_enable" (text)
local cvar = "cl_ragdoll_physics_enable"

-- making a function
function chams()

    -- getting menu boolean - true/false | in this case, we want it to be true
    if menu.GetBool("Chams fade out") then

        -- setting the console cvar to 0 using the definition we made earlier, you could also remove the definition and put "cl_ragdoll_physics_enable" on cvar 
        console.SetInt(cvar, 0)

    -- if it's false
    else 

        -- setting the console cvar to 1
        console.SetInt(cvar, 1)

    end
end

-- calling/registering the function
client.RegisterCallback("Createmove", chams)

