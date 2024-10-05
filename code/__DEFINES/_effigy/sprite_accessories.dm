/*
 *	We can't reuse the builtin SPRITE_ACCESSORY_BLANK as a bunch of code for CI
 *	and consistenthumans are reliant on it to force species parts on in screenshot tests & similar.
 *
 *	Thus, we need a custom ID for each part, and to maintain consistency we SHOULD be using
 *	/part/none::name but CI alt tests don't like that for some reason.
 */
#define SPRITE_ACCESSORY_NO_TAIL "No Tail"
#define SPRITE_ACCESSORY_NO_EARS "No Ears"
#define SPRITE_ACCESSORY_NO_SNOUT "No Snout"
#define SPRITE_ACCESSORY_NO_WINGS "No Wings"

#define SPRITE_ACCESSORY_FALLBACK_ICON 'local/icons/mob/mutant/sprite_accessories/fallback.dmi'

#define WINGS_ICON_DEFAULT_WIDTH 45
#define WINGS_ICON_DEFAULT_HEIGHT 34

/*
 *	TG Overrides
 *
 *	We override TG default blank sprite accessories here, as we need to do it early on in the init
 *	process, where doing it in /local would be too late.
 */

// Tails
/datum/sprite_accessory/tails/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NO_TAIL
	icon_state = "none"

/datum/sprite_accessory/tails/lizard/none
	icon = /datum/sprite_accessory/tails/none::icon
	name = SPRITE_ACCESSORY_NO_TAIL
	icon_state = /datum/sprite_accessory/tails/none::icon_state

/*
 *	Effigy DNA Extensions
 *
 *	These sprite accessory blanks are for the additional sprite accessories added by Effigy.
 */

/datum/sprite_accessory/ears/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NO_EARS
	icon_state = "none"

/datum/sprite_accessory/tails/anthro/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NONE
	icon_state = "none"

/datum/sprite_accessory/horns/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NONE
	icon_state = "none"

/datum/sprite_accessory/fluff/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NONE
	icon_state = "none"

/datum/sprite_accessory/frills/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NONE
	icon_state = "none"

/datum/sprite_accessory/snouts/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NO_SNOUT
	icon_state = "none"

/datum/sprite_accessory/moth_wings/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NONE
	icon_state = "none"

/datum/sprite_accessory/cosmetic_wings/none
	icon = SPRITE_ACCESSORY_FALLBACK_ICON
	name = SPRITE_ACCESSORY_NONE
	icon_state = "none"
