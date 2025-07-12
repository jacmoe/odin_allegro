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
*      File System Hooks.
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


ALLEGRO_FS_ENTRY :: struct {
	vtable: ^ALLEGRO_FS_INTERFACE,
}

/* Enum: ALLEGRO_FILE_MODE
*/
ALLEGRO_FILE_MODE :: enum c.int {
	READ    = 1,
	WRITE   = 2,
	EXECUTE = 4,
	HIDDEN  = 8,
	ISFILE  = 16,
	ISDIR   = 32,
}

EOF    :: -1

ALLEGRO_FS_INTERFACE :: struct {
	fs_create_entry:                                     proc "c" (cstring) -> ^ALLEGRO_FS_ENTRY,
	fs_destroy_entry:                                    proc "c" (^ALLEGRO_FS_ENTRY),
	fs_entry_name:                                       proc "c" (^ALLEGRO_FS_ENTRY) -> cstring,
	fs_update_entry:                                     proc "c" (^ALLEGRO_FS_ENTRY) -> bool,
	fs_entry_mode:                                       proc "c" (^ALLEGRO_FS_ENTRY) -> u32,
	fs_entry_atime, fs_entry_mtime, fs_entry_ctime:      proc "c" (^ALLEGRO_FS_ENTRY) -> libc.time_t,
	fs_entry_size:                                       proc "c" (^ALLEGRO_FS_ENTRY) -> posix.off_t,
	fs_entry_exists, fs_remove_entry, fs_open_directory: proc "c" (^ALLEGRO_FS_ENTRY) -> bool,
	fs_read_directory:                                   proc "c" (^ALLEGRO_FS_ENTRY) -> ^ALLEGRO_FS_ENTRY,
	fs_close_directory:                                  proc "c" (^ALLEGRO_FS_ENTRY) -> bool,
	fs_filename_exists, fs_remove_filename:              proc "c" (cstring) -> bool,
	fs_get_current_directory:                            proc "c" (void) -> cstring,
	fs_change_directory, fs_make_directory:              proc "c" (cstring) -> bool,
	fs_open_file:                                        proc "c" (^ALLEGRO_FS_ENTRY, cstring) -> ^ALLEGRO_FILE,
}

/* Type: ALLEGRO_FOR_EACH_FS_ENTRY_RESULT
*/
ALLEGRO_FOR_EACH_FS_ENTRY_RESULT :: enum c.int {
	ERROR = -1,
	OK    = 0,
	SKIP  = 1,
	STOP  = 2,
}

