-- adding a checkbox 
menu.AddCheckbox("Enable legit aa on use button")

-- making a function
local function legitaa()

	-- getting menu boolean - true/false | in this case, we want it to be true
	if menu.GetBool("Enable legit aa on use button") then

		-- getting the button state of the use button - true/false | in this case, we want it to be true
		if cmd.GetButtonState(buttons.InUse) then
			
			-- setting the fast stop option to false
			menu.SetBool("miscellaneous.fast_stop", false)

			-- setting the anti-aim type to 1 - legit
			menu.SetInt("antiaimbot.antiaim_type", 1)

	    -- if it's false
		else

			-- setting the fast stop option to true
			menu.SetBool("miscellaneous.fast_stop", true)

			-- setting the anti-aim type to 0 - rage
			menu.SetInt("antiaimbot.antiaim_type", 0)

		end
	end
end

-- calling/registering the function
client.RegisterCallback("Createmove", legitaa)

