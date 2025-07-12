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
* Locking flags
*/
ALLEGRO_LOCK_READWRITE :: 0

ALLEGRO_LOCK_READONLY :: 1

ALLEGRO_LOCK_WRITEONLY :: 2

ALLEGRO_LOCKED_REGION :: struct {
	data:       rawptr,
	format:     c.int,
	pitch:      c.int,
	pixel_size: c.int,
}

