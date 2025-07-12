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


/* Enum: ALLEGRO_SYSTEM_ID
*/
ALLEGRO_SYSTEM_ID :: enum c.int {
	UNKNOWN     = 0,
	XGLX        = 1481067608,
	WINDOWS     = 1464421956,
	MACOSX      = 1330862112,
	ANDROID     = 1095648338,
	IPHONE      = 1229998159,
	GP2XWIZ     = 1464424992,
	RASPBERRYPI = 1380012880,
	SDL         = 1396984882,
}

ALLEGRO_RESOURCES_PATH :: 0

ALLEGRO_TEMP_PATH :: nil

ALLEGRO_USER_DATA_PATH :: nil

ALLEGRO_USER_HOME_PATH :: nil

ALLEGRO_USER_SETTINGS_PATH :: nil

ALLEGRO_USER_DOCUMENTS_PATH :: nil

ALLEGRO_EXENAME_PATH :: nil

ALLEGRO_LAST_PATH :: nil

