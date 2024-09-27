/datum/preference/choiced/neck_fluff
	savefile_key = "feature_neck_fluff"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/neck_fluff

/datum/preference/choiced/neck_fluff/create_default_value()
	return /datum/sprite_accessory/neck_fluff/firewatch::name

/datum/preference/choiced/neck_fluff/init_possible_values()
	return assoc_to_keys_features(SSaccessories.neck_fluff_list)

/datum/preference/choiced/neck_fluff/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["neck_fluff"] = value
