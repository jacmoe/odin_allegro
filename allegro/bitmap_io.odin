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
* Bitmap loader flag
*/
ALLEGRO_KEEP_BITMAP_FORMAT :: 2

ALLEGRO_NO_PREMULTIPLIED_ALPHA :: 512

ALLEGRO_KEEP_INDEX :: 2048

ALLEGRO_IIO_LOADER_FUNCTION :: proc "c" (cstring, c.int) -> ^ALLEGRO_BITMAP

ALLEGRO_IIO_FS_LOADER_FUNCTION :: proc "c" (^ALLEGRO_FILE, c.int) -> ^ALLEGRO_BITMAP

ALLEGRO_IIO_SAVER_FUNCTION :: proc "c" (cstring, ^ALLEGRO_BITMAP) -> bool

ALLEGRO_IIO_FS_SAVER_FUNCTION :: proc "c" (^ALLEGRO_FILE, ^ALLEGRO_BITMAP) -> bool

ALLEGRO_IIO_IDENTIFIER_FUNCTION :: proc "c" (^ALLEGRO_FILE) -> bool

