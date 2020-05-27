function inventorypostinit(Inventory,inst)
	Inventory.OriginalDropEverything = Inventory.DropEverything
	
	function Inventory:DropEverything(ondeath, keepequip)
		if inst:HasTag("player") then
			-- do nothing
			print("-- my mod: has tag 'player' don't drop anything!")
		else
			print("-- my mod: not player calling original drop everything function")
			return Inventory:OriginalDropEverything(ondeath, keepequip)
		end
	end
end

AddComponentPostInit("inventory", inventorypostinit)