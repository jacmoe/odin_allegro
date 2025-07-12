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


/*
* Blending modes
*/
ALLEGRO_BLEND_MODE :: enum c.int {
	ZERO = 0,
	ONE = 1,
	ALPHA = 2,
	INVERSE_ALPHA = 3,
	SRC_COLOR = 4,
	DEST_COLOR = 5,
	INVERSE_SRC_COLOR = 6,
	INVERSE_DEST_COLOR = 7,
	CONST_COLOR = 8,
	INVERSE_CONST_COLOR = 9,
	NUM_BLEND_MODES,
}

ALLEGRO_BLEND_OPERATIONS :: enum c.int {
	ADD = 0,
	SRC_MINUS_DEST = 1,
	DEST_MINUS_SRC = 2,
	NUM_BLEND_OPERATIONS,
}

