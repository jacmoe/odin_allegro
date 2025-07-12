package allegro

import "core:c"

_ :: c

@(extra_linker_flags="/NODEFAULTLIB:libcmt")
foreign import lib {
	"c_code/lib/liballegro-static.a",
	"c_code/lib/liballegro_font-static.a",
	"c_code/lib/liballegro_image-static.a",
	"c_code/lib/liballegro_ttf-static.a",
	"c_code/lib/liballegro_primitives-static.a",
	"c_code/lib/liballegro_audio-static.a",
	"c_code/lib/liballegro_color-static.a",
	"c_code/lib/liballegro_memfile-static.a",
	"c_code/lib/liballegro_acodec-static.a",
	"c_code/lib/liballegro_main-static.a",
	"c_code/lib/liballegro_physfs-static.a"
}


/* Enum: ALLEGRO_RENDER_STATE
*/
ALLEGRO_RENDER_STATE :: enum c.int {
	/* ALLEGRO_ALPHA_TEST was the name of a rare bitmap flag only used on the
	* Wiz port.  Reuse the name but retain the same value.
	*/
	ALPHA_TEST = 16,

	/* ALLEGRO_ALPHA_TEST was the name of a rare bitmap flag only used on the
	* Wiz port.  Reuse the name but retain the same value.
	*/
	WRITE_MASK,

	/* ALLEGRO_ALPHA_TEST was the name of a rare bitmap flag only used on the
	* Wiz port.  Reuse the name but retain the same value.
	*/
	DEPTH_TEST,

	/* ALLEGRO_ALPHA_TEST was the name of a rare bitmap flag only used on the
	* Wiz port.  Reuse the name but retain the same value.
	*/
	DEPTH_FUNCTION,

	/* ALLEGRO_ALPHA_TEST was the name of a rare bitmap flag only used on the
	* Wiz port.  Reuse the name but retain the same value.
	*/
	ALPHA_FUNCTION,

	/* ALLEGRO_ALPHA_TEST was the name of a rare bitmap flag only used on the
	* Wiz port.  Reuse the name but retain the same value.
	*/
	ALPHA_TEST_VALUE,
}

/* Enum: ALLEGRO_RENDER_FUNCTION
*/
ALLEGRO_RENDER_FUNCTION :: enum c.int {
	NEVER,
	ALWAYS,
	LESS,
	EQUAL,
	LESS_EQUAL,
	GREATER,
	NOT_EQUAL,
	GREATER_EQUAL,
}

/* Enum: ALLEGRO_WRITE_MASK_FLAGS
*/
ALLEGRO_WRITE_MASK_FLAGS :: enum c.int {
	RED   = 1,
	GREEN = 2,
	BLUE  = 4,
	ALPHA = 8,
	DEPTH = 16,
	RGB   = 7,
	RGBA  = 15,
}

