/obj/item/organ/external/neck_fluff
	name = "fluff"
	desc = "Real fluffy."
	icon_state = "random_fly_1"
	preference = "feature_neck_fluff"
	bodypart_overlay = /datum/bodypart_overlay/mutant/neck_fluff
	organ_flags = ORGAN_UNREMOVABLE
	slot = ORGAN_SLOT_EXTERNAL_FLUFF
	dna_block = DNA_FRILLS_BLOCK

/datum/bodypart_overlay/mutant/neck_fluff
	feature_key = "neck_fluff"
	layers = EXTERNAL_FRONT | EXTERNAL_ADJACENT
	//color_source = ORGAN_COLOR_OVERRIDE

/datum/bodypart_overlay/mutant/neck_fluff/get_global_feature_list()
	return SSaccessories.neck_fluff_list
