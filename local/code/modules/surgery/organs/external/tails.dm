/obj/item/organ/external/tail/anthro
	name = "anthro tail"
	desc = "debug nya"
	preference = "feature_anthro_tail"
	bodypart_overlay = /datum/bodypart_overlay/mutant/tail/anthro
	dna_block = DNA_TAIL_BLOCK

/datum/bodypart_overlay/mutant/tail/anthro/get_global_feature_list()
	return SSaccessories.tails_list_anthro

/datum/bodypart_overlay/mutant/tail/anthro
	feature_key = "tail_anthro"
	//color_source = ORGAN_COLOR_OVERRIDE
