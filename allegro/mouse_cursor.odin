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


ALLEGRO_SYSTEM_MOUSE_CURSOR :: enum c.int {
	SYSTEM_MOUSE_CURSOR_NONE = 0,
	SYSTEM_MOUSE_CURSOR_DEFAULT = 1,
	SYSTEM_MOUSE_CURSOR_ARROW = 2,
	SYSTEM_MOUSE_CURSOR_BUSY = 3,
	SYSTEM_MOUSE_CURSOR_QUESTION = 4,
	SYSTEM_MOUSE_CURSOR_EDIT = 5,
	SYSTEM_MOUSE_CURSOR_MOVE = 6,
	SYSTEM_MOUSE_CURSOR_RESIZE_N = 7,
	SYSTEM_MOUSE_CURSOR_RESIZE_W = 8,
	SYSTEM_MOUSE_CURSOR_RESIZE_S = 9,
	SYSTEM_MOUSE_CURSOR_RESIZE_E = 10,
	SYSTEM_MOUSE_CURSOR_RESIZE_NW = 11,
	SYSTEM_MOUSE_CURSOR_RESIZE_SW = 12,
	SYSTEM_MOUSE_CURSOR_RESIZE_SE = 13,
	SYSTEM_MOUSE_CURSOR_RESIZE_NE = 14,
	SYSTEM_MOUSE_CURSOR_PROGRESS = 15,
	SYSTEM_MOUSE_CURSOR_PRECISION = 16,
	SYSTEM_MOUSE_CURSOR_LINK = 17,
	SYSTEM_MOUSE_CURSOR_ALT_SELECT = 18,
	SYSTEM_MOUSE_CURSOR_UNAVAILABLE = 19,
	NUM_SYSTEM_MOUSE_CURSORS,
}

