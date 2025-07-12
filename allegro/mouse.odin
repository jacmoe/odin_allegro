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
*      Mouse routines.
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


ALLEGRO_MOUSE_STATE :: struct {
	/* (x, y) Primary mouse position
	* (z) Mouse wheel position (1D 'wheel'), or,
	* (w, z) Mouse wheel position (2D 'ball')
	* display - the display the mouse is on (coordinates are relative to this)
	* pressure - the pressure applied to the mouse (for stylus/tablet)
	*/
	x: c.int,
	y:         c.int,
	z:         c.int,
	w:         c.int,
	more_axes: [4]c.int,
	buttons:   c.int,
	pressure:  f32,
	display:   ^ALLEGRO_DISPLAY,
}

ALLEGRO_MOUSE_BUTTON :: enum c.int {
	LEFT   = 1,
	RIGHT  = 2,
	MIDDLE = 3,
}

