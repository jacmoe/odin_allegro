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
*      Base header, defines basic stuff needed by pretty much
*      everything else.
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


ALLEGRO_VERSION          :: 5
ALLEGRO_SUB_VERSION      :: 2
ALLEGRO_WIP_VERSION      :: 10

   /* 1 << 31 represented as a signed int to match the arg type of
    * al_install_system.
    */
ALLEGRO_UNSTABLE_BIT :: 0

/* Not sure we need it, but since ALLEGRO_VERSION_STR contains it:
 * 0 = GIT
 * 1 = first release
 * 2... = hotfixes?
 *
 * Note x.y.z (= x.y.z.0) has release number 1, and x.y.z.1 has release
 * number 2, just to confuse you.
 */
ALLEGRO_RELEASE_NUMBER   :: 1

ALLEGRO_VERSION_STR      :: "5.2.10"
ALLEGRO_DATE_STR         :: "2024"
ALLEGRO_DATE             :: 20241126    /* yyyymmdd */
ALLEGRO_VERSION_INT :: (ALLEGRO_VERSION << 24) | (ALLEGRO_SUB_VERSION << 16) | (ALLEGRO_WIP_VERSION << 8) | ALLEGRO_RELEASE_NUMBER | ALLEGRO_UNSTABLE_BIT

/* Type: ALLEGRO_PI
 */
ALLEGRO_PI        :: 3.14159265358979323846
