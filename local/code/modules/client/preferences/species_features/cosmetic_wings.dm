/datum/preference/choiced/cosmetic_wings
	savefile_key = "feature_cosmetic_wings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/wings/cosmetic

/datum/preference/choiced/cosmetic_wings/create_default_value()
	return /datum/sprite_accessory/cosmetic_wings/harpybat::name

/datum/preference/choiced/cosmetic_wings/init_possible_values()
	return assoc_to_keys_features(SSaccessories.cosmetic_wings_list)

/datum/preference/choiced/cosmetic_wings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["wings"] = value
