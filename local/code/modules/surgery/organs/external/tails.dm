/datum/bodypart_overlay/mutant/tail
	layers = EXTERNAL_FRONT | EXTERNAL_FRONT_SECONDARY | EXTERNAL_FRONT_TERTIARY | EXTERNAL_BEHIND | EXTERNAL_BEHIND_SECONDARY | EXTERNAL_BEHIND_TERTIARY
	sprite_accessory_key = "tail"

/*
/datum/bodypart_overlay/mutant/tail/color_image(image/overlay, draw_layer, obj/item/bodypart/limb)
	if(limb == null)
		return ..()
	if(limb.owner == null)
		return ..()
	if(draw_layer == bitflag_to_layer(EXTERNAL_FRONT))
		overlay.color = limb.owner.dna.features["ext_tail_1"]
		return overlay
	else if(draw_layer == bitflag_to_layer(EXTERNAL_BEHIND))
		overlay.color = limb.owner.dna.features["ext_tail_1"]
		return overlay
	else if(draw_layer == bitflag_to_layer(EXTERNAL_FRONT_SECONDARY))
		overlay.color = limb.owner.dna.features["ext_tail_2"]
		return overlay
	else if(draw_layer == bitflag_to_layer(EXTERNAL_BEHIND_SECONDARY))
		overlay.color = limb.owner.dna.features["ext_tail_2"]
		return overlay
	else if(draw_layer == bitflag_to_layer(EXTERNAL_FRONT_TERTIARY))
		overlay.color = limb.owner.dna.features["ext_tail_3"]
		return overlay
	else if(draw_layer == bitflag_to_layer(EXTERNAL_BEHIND_TERTIARY))
		overlay.color = limb.owner.dna.features["ext_tail_3"]
		return overlay
	return ..()
*/

/datum/bodypart_overlay/mutant/tail/anthro
	feature_key = "tail_anthro"

/datum/bodypart_overlay/mutant/tail/anthro/get_global_feature_list()
	return SSaccessories.tails_list_anthro

/obj/item/organ/external/tail/anthro
	name = "anthro tail"
	desc = "debug nya"
	preference = "feature_anthro_tail"
	bodypart_overlay = /datum/bodypart_overlay/mutant/tail/anthro
	dna_block = DNA_TAIL_BLOCK
