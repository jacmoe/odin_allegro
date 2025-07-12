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


/* Possible bit combinations for the flags parameter of al_create_display. */
ALLEGRO_WINDOWED :: 1

ALLEGRO_FULLSCREEN :: 2

ALLEGRO_OPENGL :: 4

ALLEGRO_DIRECT3D_INTERNAL :: 8

ALLEGRO_RESIZABLE :: 16

ALLEGRO_FRAMELESS :: 32

ALLEGRO_NOFRAME :: 32

ALLEGRO_GENERATE_EXPOSE_EVENTS :: 64

ALLEGRO_OPENGL_3_0 :: 128

ALLEGRO_OPENGL_FORWARD_COMPATIBLE :: 256

ALLEGRO_FULLSCREEN_WINDOW :: 512

ALLEGRO_MINIMIZED :: 1024

ALLEGRO_PROGRAMMABLE_PIPELINE :: 2048

ALLEGRO_GTK_TOPLEVEL_INTERNAL :: 4096

ALLEGRO_MAXIMIZED :: 8192

ALLEGRO_OPENGL_ES_PROFILE :: 16384

/* Possible parameters for al_set_display_option.
* Make sure to update ALLEGRO_EXTRA_DISPLAY_SETTINGS if you modify
* anything here.
*/
ALLEGRO_DISPLAY_OPTIONS :: enum c.int {
	RED_SIZE = 0,
	GREEN_SIZE = 1,
	BLUE_SIZE = 2,
	ALPHA_SIZE = 3,
	RED_SHIFT = 4,
	GREEN_SHIFT = 5,
	BLUE_SHIFT = 6,
	ALPHA_SHIFT = 7,
	ACC_RED_SIZE = 8,
	ACC_GREEN_SIZE = 9,
	ACC_BLUE_SIZE = 10,
	ACC_ALPHA_SIZE = 11,
	STEREO = 12,
	AUX_BUFFERS = 13,
	COLOR_SIZE = 14,
	DEPTH_SIZE = 15,
	STENCIL_SIZE = 16,
	SAMPLE_BUFFERS = 17,
	SAMPLES = 18,
	RENDER_METHOD = 19,
	FLOAT_COLOR = 20,
	FLOAT_DEPTH = 21,
	SINGLE_BUFFER = 22,
	SWAP_METHOD = 23,
	COMPATIBLE_DISPLAY = 24,
	UPDATE_DISPLAY_REGION = 25,
	VSYNC = 26,
	MAX_BITMAP_SIZE = 27,
	SUPPORT_NPOT_BITMAP = 28,
	CAN_DRAW_INTO_BITMAP = 29,
	SUPPORT_SEPARATE_ALPHA = 30,
	AUTO_CONVERT_BITMAPS = 31,
	SUPPORTED_ORIENTATIONS = 32,
	OPENGL_MAJOR_VERSION = 33,
	OPENGL_MINOR_VERSION = 34,
	DEFAULT_SHADER_PLATFORM = 35,
	DISPLAY_OPTIONS_COUNT,
}

ALLEGRO_DONTCARE :: nil

ALLEGRO_REQUIRE :: nil

ALLEGRO_SUGGEST :: nil

/* Bitflags so they can be used for the ALLEGRO_SUPPORTED_ORIENTATIONS option. */
ALLEGRO_DISPLAY_ORIENTATION :: enum c.int {
	UNKNOWN     = 0,
	_0_DEGREES  = 1,
	_90_DEGREES = 2,
	_180_DEGREES = 4,
	_270_DEGREES = 8,
	PORTRAIT    = 5,
	LANDSCAPE   = 10,
	ALL         = 15,
	FACE_UP     = 16,
	FACE_DOWN   = 32,
}

/* Formally part of the primitives addon. */
ALLEGRO_PRIM_MAX_USER_ATTR :: 10

/* Enum: ALLEGRO_NEW_WINDOW_TITLE_MAX_SIZE
*/
ALLEGRO_NEW_WINDOW_TITLE_MAX_SIZE :: 255
