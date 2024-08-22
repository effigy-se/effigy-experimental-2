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
