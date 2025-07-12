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
*      Debug facilities.
*
*      By Shawn Hargreaves.
*
*      See readme.txt for copyright information.
*/
package allegro



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


// ALLEGRO_DEBUG            :: !al_trace_prefix(_al_debug_channel, 0, _FILE__, _LINE__, _func__) ? (void)0 : al_trace_suffix
// ALLEGRO_INFO             :: !al_trace_prefix(_al_debug_channel, 1, _FILE__, _LINE__, _func__) ? (void)0 : al_trace_suffix
// ALLEGRO_WARN             :: !al_trace_prefix(_al_debug_channel, 2, _FILE__, _LINE__, _func__) ? (void)0 : al_trace_suffix
// ALLEGRO_ERROR            :: !al_trace_prefix(_al_debug_channel, 3, _FILE__, _LINE__, _func__) ? (void)0 : al_trace_suffix
