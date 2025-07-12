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


ALLEGRO_SHADER_TYPE :: enum c.int {
	VERTEX_SHADER = 1,
	PIXEL_SHADER  = 2,
}

ALLEGRO_SHADER_PLATFORM :: enum c.int {
	AUTO         = 0,
	GLSL         = 1,
	HLSL         = 2,
	AUTO_MINIMAL = 3,
	GLSL_MINIMAL = 4,
	HLSL_MINIMAL = 5,
	HLSL_SM_3_0  = 6,
}

/* Shader variable names */
ALLEGRO_SHADER_VAR_COLOR             :: "al_color"
ALLEGRO_SHADER_VAR_POS               :: "al_pos"
ALLEGRO_SHADER_VAR_PROJVIEW_MATRIX   :: "al_projview_matrix"
ALLEGRO_SHADER_VAR_TEX               :: "al_tex"
ALLEGRO_SHADER_VAR_TEXCOORD          :: "al_texcoord"
ALLEGRO_SHADER_VAR_TEX_MATRIX        :: "al_tex_matrix"
ALLEGRO_SHADER_VAR_USER_ATTR         :: "al_user_attr_"
ALLEGRO_SHADER_VAR_USE_TEX           :: "al_use_tex"
ALLEGRO_SHADER_VAR_USE_TEX_MATRIX    :: "al_use_tex_matrix"
ALLEGRO_SHADER_VAR_ALPHA_TEST        :: "al_alpha_test"
ALLEGRO_SHADER_VAR_ALPHA_FUNCTION    :: "al_alpha_func"
ALLEGRO_SHADER_VAR_ALPHA_TEST_VALUE  :: "al_alpha_test_val"
