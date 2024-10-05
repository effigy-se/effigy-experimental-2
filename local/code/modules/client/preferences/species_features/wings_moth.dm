/datum/preference/choiced/moth_wings
	savefile_key = "feature_moth_wings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SUPPLEMENTAL_FEATURES
	relevant_external_organ = /obj/item/organ/external/wings/moth
	main_feature_name = "Wings"

/datum/preference/choiced/moth_wings/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = /datum/preference/tri_color/wings::savefile_key

	return data
