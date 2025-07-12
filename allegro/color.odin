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


ALLEGRO_COLOR :: struct {
	r, g, b, a: f32,
}

/* Enum: ALLEGRO_PIXEL_FORMAT
*/
ALLEGRO_PIXEL_FORMAT :: enum c.int {
	PIXEL_FORMAT_ANY = 0,
	PIXEL_FORMAT_ANY_NO_ALPHA = 1,
	PIXEL_FORMAT_ANY_WITH_ALPHA = 2,
	PIXEL_FORMAT_ANY_15_NO_ALPHA = 3,
	PIXEL_FORMAT_ANY_16_NO_ALPHA = 4,
	PIXEL_FORMAT_ANY_16_WITH_ALPHA = 5,
	PIXEL_FORMAT_ANY_24_NO_ALPHA = 6,
	PIXEL_FORMAT_ANY_32_NO_ALPHA = 7,
	PIXEL_FORMAT_ANY_32_WITH_ALPHA = 8,
	PIXEL_FORMAT_ARGB_8888 = 9,
	PIXEL_FORMAT_RGBA_8888 = 10,
	PIXEL_FORMAT_ARGB_4444 = 11,
	PIXEL_FORMAT_RGB_888 = 12, /* 24 bit format */
	PIXEL_FORMAT_RGB_565 = 13,
	PIXEL_FORMAT_RGB_555 = 14,
	PIXEL_FORMAT_RGBA_5551 = 15,
	PIXEL_FORMAT_ARGB_1555 = 16,
	PIXEL_FORMAT_ABGR_8888 = 17,
	PIXEL_FORMAT_XBGR_8888 = 18,
	PIXEL_FORMAT_BGR_888 = 19, /* 24 bit format */
	PIXEL_FORMAT_BGR_565 = 20,
	PIXEL_FORMAT_BGR_555 = 21,
	PIXEL_FORMAT_RGBX_8888 = 22,
	PIXEL_FORMAT_XRGB_8888 = 23,
	PIXEL_FORMAT_ABGR_F32 = 24,
	PIXEL_FORMAT_ABGR_8888_LE = 25,
	PIXEL_FORMAT_RGBA_4444 = 26,
	PIXEL_FORMAT_SINGLE_CHANNEL_8 = 27,
	PIXEL_FORMAT_COMPRESSED_RGBA_DXT1 = 28,
	PIXEL_FORMAT_COMPRESSED_RGBA_DXT3 = 29,
	PIXEL_FORMAT_COMPRESSED_RGBA_DXT5 = 30,
	NUM_PIXEL_FORMATS,
}

