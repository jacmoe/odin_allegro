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
* Bitmap flags
*/
ALLEGRO_MEMORY_BITMAP :: 1

ALLEGRO_KEEP_BITMAP_FORMAT :: 2

ALLEGRO_FORCE_LOCKING :: 4

ALLEGRO_NO_PRESERVE_TEXTURE :: 8

ALLEGRO_ALPHA_TEST :: 16

ALLEGRO_INTERNAL_OPENGL :: 32

ALLEGRO_MIN_LINEAR :: 64

ALLEGRO_MAG_LINEAR :: 128

ALLEGRO_MIPMAP :: 256

ALLEGRO_NO_PREMULTIPLIED_ALPHA :: 512

ALLEGRO_VIDEO_BITMAP :: 1024

ALLEGRO_CONVERT_BITMAP :: 4096

