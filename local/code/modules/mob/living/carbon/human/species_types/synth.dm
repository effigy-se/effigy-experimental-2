/datum/species/synth
	name = "Synthetic"
	id = SPECIES_SYNTH
	inherent_traits = list(
		TRAIT_RADIMMUNE,
		TRAIT_NOBREATH,
		TRAIT_TOXIMMUNE,
		TRAIT_GENELESS,
		TRAIT_STABLEHEART,
		TRAIT_LIMBATTACHMENT,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	mutant_organs = list(
		///obj/item/organ/external/tail/cat = "Cat",
		///obj/item/organ/internal/ears/cat = "Cat",
		///obj/item/organ/external/horns = "None",
		///obj/item/organ/external/frills = "None",
		///obj/item/organ/external/snout = "Round",
		/////obj/item/organ/external/spines = "None",
		///obj/item/organ/external/tail/anthro = "Eevee (Dual)",
	)
	mutanttongue = /obj/item/organ/internal/tongue/anthro
	mutantliver = /obj/item/organ/internal/liver/synth
	exotic_blood = /datum/reagent/fuel/oil
	payday_modifier = 1.0
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	skinned_type = /obj/item/stack/sheet/animalhide/human
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/robot/synth,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/robot/synth,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/robot/synth,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/robot/synth,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/robot/synth,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/robot/synth,
	)
	//digitigrade_customization = DIGITIGRADE_OPTIONAL

/datum/species/synth/get_physical_attributes()
	return "Felinids are very similar to humans in almost all respects, with their biggest differences being the ability to lick their wounds, \
		and an increased sensitivity to noise, which is often detrimental. They are also rather fond of eating oranges."

/datum/species/synth/get_species_description()
	return "Felinids are one of the many types of bespoke genetic \
		modifications to come of humanity's mastery of genetic science, and are \
		also one of the most common. Meow?"

/datum/species/synth/get_species_lore()
	return list(
		"Bio-engineering at its felinest, animalid are the peak example of humanity's mastery of genetic code. \
			One of many \"Animalid\" variants, animalid are the most popular and common, as well as one of the \
			biggest points of contention in genetic-modification.",

		"Body modders were eager to splice human and animal DNA in search of the holy trifecta: ears, eyes, and tail. \
			These traits were in high demand, with the corresponding side effects of vocal and neurochemical changes being seen as a minor inconvenience.",

		"Sadly for the animalid, they were not minor inconveniences. Shunned as subhuman and monstrous by many, animalid (and other Animalids) \
			sought their greener pastures out in the colonies, cloistering in communities of their own kind. \
			As a result, outer Human space has a high Animalid population.",
	)

/datum/species/synth/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "robot",
			SPECIES_PERK_NAME = "Synthetic Benefits",
			SPECIES_PERK_DESC = "Unlike organics, you DON'T explode when faced with a vacuum! Additionally, your chassis is built with such strength as to \
			grant you immunity to OVERpressure! Just make sure that the extreme cold or heat doesn't fry your circuitry."
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "star-of-life",
			SPECIES_PERK_NAME = "Unhuskable",
			SPECIES_PERK_DESC = "[plural_form] can't be husked, disappointing changelings galaxy-wide.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = "robot",
			SPECIES_PERK_NAME = "Synthetic Oddities",
			SPECIES_PERK_DESC = "[plural_form] are unable to gain nutrition from traditional foods. Instead, you must either consume welding fuel or extend a \
			wire from your arm to draw power from an APC. In addition to this, welders and wires are your sutures and mesh and only specific chemicals even metabolize inside \
			of you. This ranges from whiskey, to synthanol, to various obscure medicines. Finally, you suffer from a set of wounds exclusive to synthetics."
		),
	)

	return to_add
