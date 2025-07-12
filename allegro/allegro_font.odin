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


// ALLEGRO_FONT_FUNC :: AL_FUNC
// ALLEGRO_FONT_METHOD :: AL_METHOD
// ALLEGRO_FONT_FUNCPTR :: AL_FUNCPTR
// ALLEGRO_FONT_PRINTFUNC :: AL_PRINTFUNC

ALLEGRO_NO_KERNING :: -1

ALLEGRO_ALIGN_LEFT :: 0

ALLEGRO_ALIGN_CENTRE :: 1

ALLEGRO_ALIGN_CENTER :: 1

ALLEGRO_ALIGN_RIGHT :: 2

ALLEGRO_ALIGN_INTEGER :: 4

