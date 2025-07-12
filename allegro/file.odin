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


/* Type: ALLEGRO_FILE_INTERFACE
*/
ALLEGRO_FILE_INTERFACE :: struct {
	fi_fopen:     proc "c" (cstring, cstring) -> rawptr,
	fi_fclose:    proc "c" (^ALLEGRO_FILE) -> bool,
	fi_fread:     proc "c" (^ALLEGRO_FILE, rawptr, c.size_t) -> c.size_t,
	fi_fwrite:    proc "c" (^ALLEGRO_FILE, rawptr, c.size_t) -> c.size_t,
	fi_fflush:    proc "c" (^ALLEGRO_FILE) -> bool,
	fi_ftell:     proc "c" (^ALLEGRO_FILE) -> i64,
	fi_fseek:     proc "c" (^ALLEGRO_FILE, i64, c.int) -> bool,
	fi_feof:      proc "c" (^ALLEGRO_FILE) -> bool,
	fi_ferror:    proc "c" (^ALLEGRO_FILE) -> c.int,
	fi_ferrmsg:   proc "c" (^ALLEGRO_FILE) -> cstring,
	fi_fclearerr: proc "c" (^ALLEGRO_FILE),
	fi_fungetc:   proc "c" (^ALLEGRO_FILE, c.int) -> c.int,
	fi_fsize:     proc "c" (^ALLEGRO_FILE) -> posix.off_t,
}

/* Enum: ALLEGRO_SEEK
*/
ALLEGRO_SEEK :: enum c.int {
	SET = 0,
	CUR,
	END,
}

