/datum/preference/toggle/cosmetic_wings
	savefile_key = "cosmetic_wings_enabled"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	priority = PREFERENCE_PRIORITY_DEFAULT

/datum/preference/toggle/cosmetic_wings/apply_to_human(mob/living/carbon/human/target, value)
	if(value == FALSE)
		target.dna.features["wings"] = /datum/sprite_accessory/cosmetic_wings/none::name

/datum/preference/toggle/horns/create_default_value()
	return FALSE

/datum/preference/choiced/cosmetic_wings
	savefile_key = "feature_cosmetic_wings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/wings/cosmetic
	main_feature_name = "Wings"

/datum/preference/choiced/cosmetic_wings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["wings"] = value

/datum/preference/choiced/cosmetic_wings/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = /datum/preference/tri_color/wings::savefile_key

	return data

/datum/preference/choiced/cosmetic_wings/create_default_value()
	return /datum/sprite_accessory/cosmetic_wings/harpybat::name

/datum/preference/choiced/cosmetic_wings/init_possible_values()
	return assoc_to_keys_features(SSaccessories.cosmetic_wings_list)

/datum/preference/choiced/cosmetic_wings/is_accessible(datum/preferences/preferences)
	. = ..()
	var/cosmetic_wings_enabled = preferences.read_preference(/datum/preference/toggle/cosmetic_wings)
	if(cosmetic_wings_enabled)
		return TRUE
	return FALSE

/datum/preference/tri_color/wings
	priority = PREFERENCE_PRIORITY_BODY_TYPE
	savefile_key = "wings_tri"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SUPPLEMENTAL_FEATURES

/datum/preference/tri_color/wings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["wings_tri_1"] = value[1]
	target.dna.features["wings_tri_2"] = value[2]
	target.dna.features["wings_tri_3"] = value[3]

/datum/preference/tri_color/wings/create_default_value()
	return list(sanitize_hexcolor("[pick("7F", "FF")][pick("7F", "FF")][pick("7F", "FF")]"),
	sanitize_hexcolor("[pick("7F", "FF")][pick("7F", "FF")][pick("7F", "FF")]"),
	sanitize_hexcolor("[pick("7F", "FF")][pick("7F", "FF")][pick("7F", "FF")]"))

/datum/preference/tri_color/wings/is_valid(value)
	if (!..(value))
		return FALSE
	return TRUE
