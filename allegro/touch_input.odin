/*         ______   ___    ___
*        /\  _  \ /\_ \  /\_ \
*        \ \ \L\ \\//\ \ \//\ \      __     __   _ __   ___
*         \ \  __ \ \ \ \  \ \ \   /'__`\ /'_ `\/\`'__\/ __`\
*          \ \ \/\ \ \_\ \_ \_\ \_/\  __//\ \L\ \ \ \//\ \L\ \
*           \ \_\ \_\/\____\/\____\ \____\ \____ \ \_\\ \____/
*            \/_/\/_/\/____/\/____/\/____/\/___L\ \/_/ \/___/
*                                           /\____/
*                                           \_/__/
*
*      Touch input routines.
*
*      See readme.txt for copyright information.
*/
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


/* Enum: ALLEGRO_TOUCH_INPUT_MAX_TOUCH_COUNT
 */
ALLEGRO_TOUCH_INPUT_MAX_TOUCH_COUNT        :: 16

ALLEGRO_TOUCH_STATE :: struct {
	/* (id) An identifier of touch. If touch is valid this number is positive.
	* (x, y) Touch position on the screen in 1:1 resolution.
	* (dx, dy) Relative touch position.
	* (primary) True, if touch is a primary one (usually first one).
	* (display) Display at which the touch belong.
	*/
	id: c.int,
	x, y:    f32,
	dx, dy:  f32,
	primary: bool,
	display: ^ALLEGRO_DISPLAY,
}

ALLEGRO_TOUCH_INPUT_STATE :: struct {
	touches: [16]ALLEGRO_TOUCH_STATE,
}

