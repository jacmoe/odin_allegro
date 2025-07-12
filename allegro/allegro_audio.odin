/*
* Updated for 4.9 api inclusion by Ryan Dickie
* Originally done by KC/Milan
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


// ALLEGRO_KCM_AUDIO_FUNC :: AL_FUNC

/* Enum: ALLEGRO_AUDIO_EVENT_TYPE
*/
ALLEGRO_AUDIO_EVENT_TYPE :: enum c.int {
	/* Internal, used to communicate with acodec. */
	/* Must be in 512 <= n < 1024 */
	KCM_STREAM_FEEDER_QUIT_EVENT_TYPE = 512,

	/* Internal, used to communicate with acodec. */
	/* Must be in 512 <= n < 1024 */
	ALLEGRO_EVENT_AUDIO_STREAM_FRAGMENT = 513,

	/* Internal, used to communicate with acodec. */
	/* Must be in 512 <= n < 1024 */
	ALLEGRO_EVENT_AUDIO_STREAM_FINISHED = 514,
}

/* Enum: ALLEGRO_AUDIO_DEPTH
*/
ALLEGRO_AUDIO_DEPTH :: enum c.int {
	/* Sample depth and type, and signedness. Mixers only use 32-bit signed
	* float (-1..+1). The unsigned value is a bit-flag applied to the depth
	* value.
	*/
	INT8 = 0,

	/* Sample depth and type, and signedness. Mixers only use 32-bit signed
	* float (-1..+1). The unsigned value is a bit-flag applied to the depth
	* value.
	*/
	INT16 = 1,

	/* Sample depth and type, and signedness. Mixers only use 32-bit signed
	* float (-1..+1). The unsigned value is a bit-flag applied to the depth
	* value.
	*/
	INT24 = 2,

	/* Sample depth and type, and signedness. Mixers only use 32-bit signed
	* float (-1..+1). The unsigned value is a bit-flag applied to the depth
	* value.
	*/
	FLOAT32 = 3,

	/* Sample depth and type, and signedness. Mixers only use 32-bit signed
	* float (-1..+1). The unsigned value is a bit-flag applied to the depth
	* value.
	*/
	UNSIGNED = 8,

	/* For convenience */
	UINT8 = 8,

	/* For convenience */
	UINT16 = 9,

	/* For convenience */
	UINT24 = 10,
}

/* Enum: ALLEGRO_CHANNEL_CONF
*/
ALLEGRO_CHANNEL_CONF :: enum c.int {
	/* Speaker configuration (mono, stereo, 2.1, 3, etc). With regards to
	* behavior, most of this code makes no distinction between, say, 4.1 and
	* 5 speaker setups.. they both have 5 "channels". However, users would
	* like the distinction, and later when the higher-level stuff is added,
	* the differences will become more important. (v>>4)+(v&0xF) should yield
	* the total channel count.
	*/
	_1 = 16,

	/* Speaker configuration (mono, stereo, 2.1, 3, etc). With regards to
	* behavior, most of this code makes no distinction between, say, 4.1 and
	* 5 speaker setups.. they both have 5 "channels". However, users would
	* like the distinction, and later when the higher-level stuff is added,
	* the differences will become more important. (v>>4)+(v&0xF) should yield
	* the total channel count.
	*/
	_2 = 32,

	/* Speaker configuration (mono, stereo, 2.1, 3, etc). With regards to
	* behavior, most of this code makes no distinction between, say, 4.1 and
	* 5 speaker setups.. they both have 5 "channels". However, users would
	* like the distinction, and later when the higher-level stuff is added,
	* the differences will become more important. (v>>4)+(v&0xF) should yield
	* the total channel count.
	*/
	_3 = 48,

	/* Speaker configuration (mono, stereo, 2.1, 3, etc). With regards to
	* behavior, most of this code makes no distinction between, say, 4.1 and
	* 5 speaker setups.. they both have 5 "channels". However, users would
	* like the distinction, and later when the higher-level stuff is added,
	* the differences will become more important. (v>>4)+(v&0xF) should yield
	* the total channel count.
	*/
	_4 = 64,

	/* Speaker configuration (mono, stereo, 2.1, 3, etc). With regards to
	* behavior, most of this code makes no distinction between, say, 4.1 and
	* 5 speaker setups.. they both have 5 "channels". However, users would
	* like the distinction, and later when the higher-level stuff is added,
	* the differences will become more important. (v>>4)+(v&0xF) should yield
	* the total channel count.
	*/
	_5_1 = 81,

	/* Speaker configuration (mono, stereo, 2.1, 3, etc). With regards to
	* behavior, most of this code makes no distinction between, say, 4.1 and
	* 5 speaker setups.. they both have 5 "channels". However, users would
	* like the distinction, and later when the higher-level stuff is added,
	* the differences will become more important. (v>>4)+(v&0xF) should yield
	* the total channel count.
	*/
	_6_1 = 97,

	/* Speaker configuration (mono, stereo, 2.1, 3, etc). With regards to
	* behavior, most of this code makes no distinction between, say, 4.1 and
	* 5 speaker setups.. they both have 5 "channels". However, users would
	* like the distinction, and later when the higher-level stuff is added,
	* the differences will become more important. (v>>4)+(v&0xF) should yield
	* the total channel count.
	*/
	_7_1 = 113,
}

ALLEGRO_MAX_CHANNELS :: 8

/* Enum: ALLEGRO_PLAYMODE
*/
ALLEGRO_PLAYMODE :: enum c.int {
	ALLEGRO_PLAYMODE_ONCE              = 256,
	ALLEGRO_PLAYMODE_LOOP              = 257,
	ALLEGRO_PLAYMODE_BIDIR             = 258,
	ALLEGRO_PLAYMODE_STREAM_ONCE       = 259, /* internal */
	ALLEGRO_PLAYMODE_STREAM_ONEDIR     = 260, /* internal */
	ALLEGRO_PLAYMODE_LOOP_ONCE         = 261,
	ALLEGRO_PLAYMODE_STREAM_LOOP_ONCE  = 262, /* internal */
}

/* Enum: ALLEGRO_MIXER_QUALITY
*/
ALLEGRO_MIXER_QUALITY :: enum c.int {
	POINT  = 272,
	LINEAR = 273,
	CUBIC  = 274,
}

/* Enum: ALLEGRO_AUDIO_PAN_NONE
 */
ALLEGRO_AUDIO_PAN_NONE      :: -1000.0

ALLEGRO_SAMPLE_ID :: struct {
	_index: c.int,
	_id:    c.int,
}

