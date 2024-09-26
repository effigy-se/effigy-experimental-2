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
