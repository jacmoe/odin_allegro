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


/* Type: ALLEGRO_EVENT_TYPE
*/
ALLEGRO_EVENT_TYPE :: c.uint

ALLEGRO_EVENT_JOYSTICK_AXIS :: 1

ALLEGRO_EVENT_JOYSTICK_BUTTON_DOWN :: 2

ALLEGRO_EVENT_JOYSTICK_BUTTON_UP :: 3

ALLEGRO_EVENT_JOYSTICK_CONFIGURATION :: 4

ALLEGRO_EVENT_KEY_DOWN :: 10

ALLEGRO_EVENT_KEY_CHAR :: 11

ALLEGRO_EVENT_KEY_UP :: 12

ALLEGRO_EVENT_MOUSE_AXES :: 20

ALLEGRO_EVENT_MOUSE_BUTTON_DOWN :: 21

ALLEGRO_EVENT_MOUSE_BUTTON_UP :: 22

ALLEGRO_EVENT_MOUSE_ENTER_DISPLAY :: 23

ALLEGRO_EVENT_MOUSE_LEAVE_DISPLAY :: 24

ALLEGRO_EVENT_MOUSE_WARPED :: 25

ALLEGRO_EVENT_TIMER :: 30

ALLEGRO_EVENT_DISPLAY_EXPOSE :: 40

ALLEGRO_EVENT_DISPLAY_RESIZE :: 41

ALLEGRO_EVENT_DISPLAY_CLOSE :: 42

ALLEGRO_EVENT_DISPLAY_LOST :: 43

ALLEGRO_EVENT_DISPLAY_FOUND :: 44

ALLEGRO_EVENT_DISPLAY_SWITCH_IN :: 45

ALLEGRO_EVENT_DISPLAY_SWITCH_OUT :: 46

ALLEGRO_EVENT_DISPLAY_ORIENTATION :: 47

ALLEGRO_EVENT_DISPLAY_HALT_DRAWING :: 48

ALLEGRO_EVENT_DISPLAY_RESUME_DRAWING :: 49

ALLEGRO_EVENT_TOUCH_BEGIN :: 50

ALLEGRO_EVENT_TOUCH_END :: 51

ALLEGRO_EVENT_TOUCH_MOVE :: 52

ALLEGRO_EVENT_TOUCH_CANCEL :: 53

ALLEGRO_EVENT_DISPLAY_CONNECTED :: 60

ALLEGRO_EVENT_DISPLAY_DISCONNECTED :: 61

ALLEGRO_EVENT_DROP :: 62

ALLEGRO_EVENT_SOURCE :: struct {
	__pad: [32]c.int,
}

ALLEGRO_ANY_EVENT :: struct {
	type:      ALLEGRO_EVENT_TYPE,
	source:    ^ALLEGRO_EVENT_SOURCE,
	timestamp: f64,
}

ALLEGRO_DISPLAY_EVENT :: struct {
	type:          ALLEGRO_EVENT_TYPE,
	source:        ^ALLEGRO_DISPLAY,
	timestamp:     f64,
	x, y:          c.int,
	width, height: c.int,
	orientation:   c.int,
}

ALLEGRO_JOYSTICK_EVENT :: struct {
	type:      ALLEGRO_EVENT_TYPE,
	source:    ^ALLEGRO_JOYSTICK,
	timestamp: f64,
	id:        ^ALLEGRO_JOYSTICK,
	stick:     c.int,
	axis:      c.int,
	pos:       f32,
	button:    c.int,
}

ALLEGRO_KEYBOARD_EVENT :: struct {
	type:      ALLEGRO_EVENT_TYPE,
	source:    ^ALLEGRO_KEYBOARD,
	timestamp: f64,
	display:   ^ALLEGRO_DISPLAY, /* the window the key was pressed in */
	keycode:   c.int,            /* the physical key pressed */
	unichar:   c.int,            /* unicode character or negative */
	modifiers: c.uint,           /* bitfield */
	repeat:    bool,             /* auto-repeated or not */
}

ALLEGRO_MOUSE_EVENT :: struct {
	type:           ALLEGRO_EVENT_TYPE,
	source:         ^ALLEGRO_MOUSE,
	timestamp:      f64,
	display:        ^ALLEGRO_DISPLAY,

	/* (display) Window the event originate from
	* (x, y) Primary mouse position
	* (z) Mouse wheel position (1D 'wheel'), or,
	* (w, z) Mouse wheel position (2D 'ball')
	* (pressure) The pressure applied, for stylus (0 or 1 for normal mouse)
	*/
	x, y, z, w: c.int,
	dx, dy, dz, dw: c.int,
	button:         c.uint,
	pressure:       f32,
}

ALLEGRO_TIMER_EVENT :: struct {
	type:      ALLEGRO_EVENT_TYPE,
	source:    ^ALLEGRO_TIMER,
	timestamp: f64,
	count:     i64,
	error:     f64,
}

ALLEGRO_TOUCH_EVENT :: struct {
	type:      ALLEGRO_EVENT_TYPE,
	source:    ^ALLEGRO_TOUCH_INPUT,
	timestamp: f64,
	display:   ^ALLEGRO_DISPLAY,

	/* (id) Identifier of the event, always positive number.
	* (x, y) Touch position on the screen in 1:1 resolution.
	* (dx, dy) Relative touch position.
	* (primary) True, if touch is a primary one (usually first one).
	*/
	id: c.int,
	x, y:      f32,
	dx, dy:    f32,
	primary:   bool,
}

ALLEGRO_USER_EVENT :: struct {
	type:              ALLEGRO_EVENT_TYPE,
	source:            ^ALLEGRO_EVENT_SOURCE,
	timestamp:         f64,
	__internal__descr: ^ALLEGRO_USER_EVENT_DESCRIPTOR,
	data1:             c.intptr_t,
	data2:             c.intptr_t,
	data3:             c.intptr_t,
	data4:             c.intptr_t,
}

ALLEGRO_DROP_EVENT :: struct {
	type:        ALLEGRO_EVENT_TYPE,
	source:      ^ALLEGRO_DISPLAY,
	timestamp:   f64,
	x, y:        c.int,
	row:         c.int,
	is_file:     bool,
	text:        cstring,
	is_complete: bool,
}

ALLEGRO_EVENT :: struct #raw_union {
	/* This must be the same as the first field of _AL_EVENT_HEADER.  */
	type: ALLEGRO_EVENT_TYPE,

	/* `any' is to allow the user to access the other fields which are
	* common to all event types, without using some specific type
	* structure.
	*/
	any: ALLEGRO_ANY_EVENT,
	display:  ALLEGRO_DISPLAY_EVENT,
	joystick: ALLEGRO_JOYSTICK_EVENT,
	keyboard: ALLEGRO_KEYBOARD_EVENT,
	mouse:    ALLEGRO_MOUSE_EVENT,
	timer:    ALLEGRO_TIMER_EVENT,
	touch:    ALLEGRO_TOUCH_EVENT,
	user:     ALLEGRO_USER_EVENT,
	drop:     ALLEGRO_DROP_EVENT,
}

