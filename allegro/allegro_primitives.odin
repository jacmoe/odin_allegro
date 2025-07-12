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


// ALLEGRO_PRIM_FUNC :: AL_FUNC

/* Enum: ALLEGRO_PRIM_TYPE
*/
ALLEGRO_PRIM_TYPE :: enum c.int {
	LINE_LIST,
	LINE_STRIP,
	LINE_LOOP,
	TRIANGLE_LIST,
	TRIANGLE_STRIP,
	TRIANGLE_FAN,
	POINT_LIST,
	NUM_TYPES,
}

ALLEGRO_PRIM_MAX_USER_ATTR :: 10

/* Enum: ALLEGRO_PRIM_ATTR
*/
ALLEGRO_PRIM_ATTR :: enum c.int {
	POSITION = 1,
	COLOR_ATTR,
	TEX_COORD,
	TEX_COORD_PIXEL,
	USER_ATTR,
	ATTR_NUM = 15,
}

/* Enum: ALLEGRO_PRIM_STORAGE
*/
ALLEGRO_PRIM_STORAGE :: enum c.int {
	FLOAT_2,
	FLOAT_3,
	SHORT_2,
	FLOAT_1,
	FLOAT_4,
	UBYTE_4,
	SHORT_4,
	NORMALIZED_UBYTE_4,
	NORMALIZED_SHORT_2,
	NORMALIZED_SHORT_4,
	NORMALIZED_USHORT_2,
	NORMALIZED_USHORT_4,
	HALF_FLOAT_2,
	HALF_FLOAT_4,
}

/* Enum: ALLEGRO_LINE_JOIN
*/
ALLEGRO_LINE_JOIN :: enum c.int {
	NONE,
	BEVEL,
	ROUND,
	MITER,
	MITRE = 3,
}

/* Enum: ALLEGRO_LINE_CAP
*/
ALLEGRO_LINE_CAP :: enum c.int {
	NONE,
	SQUARE,
	ROUND,
	TRIANGLE,
	CLOSED,
}

/* Enum: ALLEGRO_PRIM_BUFFER_FLAGS
*/
ALLEGRO_PRIM_BUFFER_FLAGS :: enum c.int {
	STREAM    = 1,
	STATIC    = 2,
	DYNAMIC   = 4,
	READWRITE = 8,
}

/* Enum: ALLEGRO_VERTEX_CACHE_SIZE
 */
ALLEGRO_VERTEX_CACHE_SIZE :: 256

/* Enum: ALLEGRO_PRIM_QUALITY
 */
ALLEGRO_PRIM_QUALITY :: 10

ALLEGRO_VERTEX_ELEMENT :: struct {
	attribute: c.int,
	storage:   c.int,
	offset:    c.int,
}

ALLEGRO_VERTEX :: struct {
	x, y, z: f32,
	u, v:    f32,
	color:   ALLEGRO_COLOR,
}

