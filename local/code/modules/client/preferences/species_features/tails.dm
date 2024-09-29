/datum/preference/choiced/tail_anthro
	savefile_key = "feature_anthro_tail"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/tail/anthro

/datum/preference/choiced/tail_anthro/create_default_value()
	return /datum/sprite_accessory/tails/anthro/eevee::name

/datum/preference/choiced/tail_anthro/init_possible_values()
	return assoc_to_keys_features(SSaccessories.tails_list_anthro)

/datum/preference/choiced/tail_anthro/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["tail_anthro"] = value

/datum/preference/tri_color/tail
	priority = PREFERENCE_PRIORITY_BODY_TYPE
	savefile_key = "tail_tri"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SUPPLEMENTAL_FEATURES

/datum/preference/tri_color/tail/create_default_value()
	return list(sanitize_hexcolor("[pick("7F", "FF")][pick("7F", "FF")][pick("7F", "FF")]"),
	sanitize_hexcolor("[pick("7F", "FF")][pick("7F", "FF")][pick("7F", "FF")]"),
	sanitize_hexcolor("[pick("7F", "FF")][pick("7F", "FF")][pick("7F", "FF")]"))

/datum/preference/tri_color/tail/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["tail_tri_1"] = value[1]
	target.dna.features["tail_tri_2"] = value[2]
	target.dna.features["tail_tri_3"] = value[3]

/datum/preference/tri_color/tail/is_valid(value)
	if (!..(value))
		return FALSE
	return TRUE
