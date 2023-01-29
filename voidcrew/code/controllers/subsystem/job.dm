/datum/controller/subsystem/job/proc/get_manifest()
	var/list/manifest_out = list()
	for(var/datum/overmap/ship/controlled/ship as anything in SSovermap.controlled_ships)
		if(!length(ship.manifest))
			continue
		manifest_out["[ship.name] ([ship.source_template.short_name])"] = list()
		for(var/crewmember in ship.manifest)
			var/datum/job/crewmember_job = ship.manifest[crewmember]
			manifest_out["[ship.name] ([ship.source_template.short_name])"] += list(list(
				"name" = crewmember,
				"rank" = crewmember_job.title,
				"officer" = crewmember_job.officer
			))

	return manifest_out
