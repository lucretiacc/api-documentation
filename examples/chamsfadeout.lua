menu.AddCheckbox("Chams fade out")
local cvar = "cl_ragdoll_physics_enable"

function chams()
    if menu.GetBool("Chams fade out") then
        console.SetInt(cvar, 0)
    else 
        console.SetInt(cvar, 1)
    end
end
client.RegisterCallback("Createmove", chams)
