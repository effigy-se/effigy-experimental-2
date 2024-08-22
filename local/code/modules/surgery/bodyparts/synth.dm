#define SYNTH_BRUTE_MODIFIER 1.3
#define SYNTH_BURN_MODIFIER 1.3

// Synth bois!
/obj/item/bodypart/head/robot/synth
	icon_greyscale = BODYPART_ICON_SYNTH_BASE
	limb_id = SPECIES_SYNTH
	should_draw_greyscale = TRUE
	change_exempt_flags = NONE
	brute_modifier = SYNTH_BRUTE_MODIFIER
	burn_modifier = SYNTH_BURN_MODIFIER
	head_flags = HEAD_ALL_FEATURES

/obj/item/bodypart/chest/robot/synth
	icon_greyscale = BODYPART_ICON_SYNTH_BASE
	should_draw_greyscale = TRUE
	limb_id = SPECIES_SYNTH
	change_exempt_flags = NONE
	brute_modifier = SYNTH_BRUTE_MODIFIER
	burn_modifier = SYNTH_BURN_MODIFIER

/obj/item/bodypart/arm/left/robot/synth
	icon_greyscale = BODYPART_ICON_SYNTH_BASE
	limb_id = SPECIES_SYNTH
	should_draw_greyscale = TRUE
	change_exempt_flags = NONE
	brute_modifier = SYNTH_BRUTE_MODIFIER
	burn_modifier = SYNTH_BURN_MODIFIER

/obj/item/bodypart/arm/right/robot/synth
	icon_greyscale = BODYPART_ICON_SYNTH_BASE
	limb_id = SPECIES_SYNTH
	should_draw_greyscale = TRUE
	change_exempt_flags = NONE
	brute_modifier = SYNTH_BRUTE_MODIFIER
	burn_modifier = SYNTH_BURN_MODIFIER

/obj/item/bodypart/leg/left/robot/synth
	icon_greyscale = BODYPART_ICON_SYNTH_BASE
	limb_id = SPECIES_SYNTH
	should_draw_greyscale = TRUE
	//digitigrade_type = /obj/item/bodypart/leg/left/robot/digitigrade
	change_exempt_flags = NONE
	brute_modifier = SYNTH_BRUTE_MODIFIER
	burn_modifier = SYNTH_BURN_MODIFIER

/obj/item/bodypart/leg/right/robot/synth
	icon_greyscale = BODYPART_ICON_SYNTH_BASE
	should_draw_greyscale = TRUE
	limb_id = SPECIES_SYNTH
	//digitigrade_type = /obj/item/bodypart/leg/right/robot/digitigrade
	change_exempt_flags = NONE
	brute_modifier = SYNTH_BRUTE_MODIFIER
	burn_modifier = SYNTH_BURN_MODIFIER

/obj/item/bodypart/leg/left/robot/digitigrade
	icon_greyscale = BODYPART_ICON_SYNTH_LIZARD
	should_draw_greyscale = TRUE
	limb_id = BODYPART_ID_DIGITIGRADE
	bodyshape = parent_type::bodyshape | BODYSHAPE_DIGITIGRADE
	base_limb_id = BODYPART_ID_DIGITIGRADE
	change_exempt_flags = NONE
	brute_modifier = SYNTH_BRUTE_MODIFIER
	burn_modifier = SYNTH_BURN_MODIFIER

/obj/item/bodypart/leg/right/robot/digitigrade
	icon_greyscale = BODYPART_ICON_SYNTH_LIZARD
	should_draw_greyscale = TRUE
	limb_id = BODYPART_ID_DIGITIGRADE
	bodyshape = parent_type::bodyshape | BODYSHAPE_DIGITIGRADE
	base_limb_id = BODYPART_ID_DIGITIGRADE
	change_exempt_flags = NONE
	brute_modifier = SYNTH_BRUTE_MODIFIER
	burn_modifier = SYNTH_BURN_MODIFIER

#undef SYNTH_BRUTE_MODIFIER
#undef SYNTH_BURN_MODIFIER
