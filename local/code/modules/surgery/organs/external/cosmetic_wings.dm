/obj/item/organ/external/wings/cosmetic
	preference = "feature_cosmetic_wings"
	bodypart_overlay = /datum/bodypart_overlay/mutant/wings/cosmetic

/datum/bodypart_overlay/mutant/wings/cosmetic/get_global_feature_list()
	return SSaccessories.cosmetic_wings_list

/*
/datum/species/regenerate_organs(mob/living/carbon/organ_holder, datum/species/old_species, replace_current = TRUE, list/excluded_zones, visual_only = FALSE)
	. = ..()
	if(organ_holder == null)
		return
	if(!ishuman(organ_holder))
		return

	if(organ_holder.dna.features["moth_wings"])
		if((organ_holder.dna.features["moth_wings"] != /datum/sprite_accessory/moth_wings/none::name && organ_holder.dna.features["moth_wings"] != /datum/sprite_accessory/blank::name))
			var/obj/item/organ/replacement = SSwardrobe.provide_type(/obj/item/organ/external/wings/moth)
			debug_effigy("DNA feature moth_wings new organ is [replacement]", PREF)
			replacement.Insert(organ_holder, special = TRUE, movement_flags = DELETE_IF_REPLACED)
			return .
	if(organ_holder.dna.features["wings"])
		if(organ_holder.dna.features["wings"] != /datum/sprite_accessory/cosmetic_wings/none::name && organ_holder.dna.features["wings"] != /datum/sprite_accessory/blank::name)
			var/obj/item/organ/replacement = SSwardrobe.provide_type(/obj/item/organ/external/wings/cosmetic)
			debug_effigy("DNA feature moth_wings new organ is [replacement]", PREF)
			replacement.Insert(organ_holder, special = TRUE, movement_flags = DELETE_IF_REPLACED)
			return .

	var/obj/item/organ/external/wings/old_part = organ_holder.get_organ_slot(ORGAN_SLOT_EXTERNAL_WINGS)
	if(istype(old_part))
		old_part.Remove(organ_holder, special = TRUE, movement_flags = DELETE_IF_REPLACED)
		old_part.moveToNullspace()
*/
