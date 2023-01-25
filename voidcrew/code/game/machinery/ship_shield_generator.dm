obj/structure/ship_shield_generator
	name = "Shield Generator"
	desc = "A proper shield for your ship that could shrug off a Q-beam. Legend has it the core is the size of a walnut."
	icon = ""
	icon_state = ""
	density = TRUE
	opacity = FALSE
	anchored = TRUE
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	max_integrity = 200
	CanAtmosPass = ATMOS_PASS_DENSITY
	use_power = IDLE_POWER_USE
	idle_power_usage = 4
	active_power_usage = 250
	var/using_power = FALSE

obj/structure/ship_shield_generator/Initialize()
	. = ..()



