//--------------------------------------
// Generated from Forge Shading Language
//--------------------------------------

#define METAL
#define TARGET_MACOS
#include "includes/metal.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontShaders.list"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 482 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontShaders.list" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/../../../../Graphics/FSL/defaults.h" 1
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/../../../../Graphics/FSL/defaults.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h" 1
# 46 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/../../../../Graphics/FSL/metal_srt.h" 1
# 47 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h" 2
# 26 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/../../../../Graphics/FSL/defaults.h" 2
# 144 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/../../../../Graphics/FSL/defaults.h"
constexpr sampler gSamplerPointClamp(coord::normalized, filter::FILTER_NEAREST, mip_filter::MIPMAP_MODE_NEAREST, max_anisotropy(1), s_address::ADDRESS_MODE_CLAMP_TO_EDGE, t_address::ADDRESS_MODE_CLAMP_TO_EDGE, r_address::ADDRESS_MODE_CLAMP_TO_EDGE, compare_func::CMP_NEVER);

constexpr sampler gSamplerPointWrap(coord::normalized, filter::FILTER_NEAREST, mip_filter::MIPMAP_MODE_NEAREST, max_anisotropy(1), s_address::ADDRESS_MODE_REPEAT, t_address::ADDRESS_MODE_REPEAT, r_address::ADDRESS_MODE_REPEAT, compare_func::CMP_NEVER);

constexpr sampler gSamplerBilinearClamp(coord::normalized, filter::FILTER_LINEAR, mip_filter::MIPMAP_MODE_NEAREST, max_anisotropy(1), s_address::ADDRESS_MODE_CLAMP_TO_EDGE, t_address::ADDRESS_MODE_CLAMP_TO_EDGE, r_address::ADDRESS_MODE_CLAMP_TO_EDGE, compare_func::CMP_NEVER);

constexpr sampler gSamplerBilinearWrap(coord::normalized, filter::FILTER_LINEAR, mip_filter::MIPMAP_MODE_NEAREST, max_anisotropy(1), s_address::ADDRESS_MODE_REPEAT, t_address::ADDRESS_MODE_REPEAT, r_address::ADDRESS_MODE_REPEAT, compare_func::CMP_NEVER);

constexpr sampler gSamplerTrilinearClamp(coord::normalized, filter::FILTER_LINEAR, mip_filter::MIPMAP_MODE_LINEAR, max_anisotropy(1), s_address::ADDRESS_MODE_CLAMP_TO_EDGE, t_address::ADDRESS_MODE_CLAMP_TO_EDGE, r_address::ADDRESS_MODE_CLAMP_TO_EDGE, compare_func::CMP_NEVER);

constexpr sampler gSamplerTrilinearWrap(coord::normalized, filter::FILTER_LINEAR, mip_filter::MIPMAP_MODE_LINEAR, max_anisotropy(1), s_address::ADDRESS_MODE_REPEAT, t_address::ADDRESS_MODE_REPEAT, r_address::ADDRESS_MODE_REPEAT, compare_func::CMP_NEVER);

constexpr sampler gSamplerPointMirror(coord::normalized, filter::FILTER_NEAREST, mip_filter::MIPMAP_MODE_NEAREST, max_anisotropy(1), s_address::ADDRESS_MODE_MIRROR, t_address::ADDRESS_MODE_MIRROR, r_address::ADDRESS_MODE_MIRROR, compare_func::CMP_NEVER);

constexpr sampler gSamplerPointBorder(coord::normalized, filter::FILTER_NEAREST, mip_filter::MIPMAP_MODE_NEAREST, max_anisotropy(1), s_address::ADDRESS_MODE_CLAMP_TO_BORDER, t_address::ADDRESS_MODE_CLAMP_TO_BORDER, r_address::ADDRESS_MODE_CLAMP_TO_BORDER, compare_func::CMP_NEVER);

constexpr sampler gSamplerTrilinearMirror(coord::normalized, filter::FILTER_LINEAR, mip_filter::MIPMAP_MODE_LINEAR, max_anisotropy(1), s_address::ADDRESS_MODE_MIRROR, t_address::ADDRESS_MODE_MIRROR, r_address::ADDRESS_MODE_MIRROR, compare_func::CMP_NEVER);

constexpr sampler gSamplerTrilinearBorder(coord::normalized, filter::FILTER_LINEAR, mip_filter::MIPMAP_MODE_LINEAR, max_anisotropy(1), s_address::ADDRESS_MODE_CLAMP_TO_BORDER, t_address::ADDRESS_MODE_CLAMP_TO_BORDER, r_address::ADDRESS_MODE_CLAMP_TO_BORDER, compare_func::CMP_NEVER);

constexpr sampler gSamplerAnisotropic(coord::normalized, filter::FILTER_LINEAR, mip_filter::MIPMAP_MODE_LINEAR, max_anisotropy(8), s_address::ADDRESS_MODE_REPEAT, t_address::ADDRESS_MODE_REPEAT, r_address::ADDRESS_MODE_REPEAT, compare_func::CMP_NEVER);
# 2 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontShaders.list" 2


# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 33 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/metal_ext.h" 1
# 34 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 2
# 5 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontShaders.list" 2

# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontStash.frag.fsl" 1
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontStash.frag.fsl"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/Resources.h" 1
# 28 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/Resources.h"
STRUCT(UniformBlock)
{



 DATA(float4x4, mvp, None);

    DATA(float4, color, None);
    DATA(float2, scaleBias, None);
    DATA(float2, pad, None);
};

# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontStash.srt.h" 1
# 29 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontStash.srt.h"

#line 31
#line 32

# 41 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/Resources.h" 2
# 26 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontStash.frag.fsl" 2

STRUCT(PsIn)
{
#line 29
 float4 position [[position]];
#line 30
 float2 texCoord ;
};


fragment float4 fontstash_frag(
	PsIn In[[stage_in]]
	,constant CBUFFER(UniformBlock)& _fslF0_gUniformBlock [[buffer(4)]] // main arg PerDraw
	,Tex2D(float4) _fslF0_gFontAtlas [[texture(0)]] // main arg PerDraw
)
#line 34
{
	constant CBUFFER(UniformBlock)& gUniformBlock = _fslF0_gUniformBlock;
	Tex2D(float4)  gFontAtlas = _fslF0_gFontAtlas;
	In.position.w = rcp(In.position.w);

#line 36
// INIT_MAIN;
 float4 Out;
 Out = float4(1.0f, 1.0f, 1.0f, SampleTex2D(gFontAtlas, gSamplerBilinearClamp, In.texCoord).r) * gUniformBlock.color;
 {
 	return Out;
 }
#line 39
// RETURN(Out);
}
# 7 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontShaders.list" 2


# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 10 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontShaders.list" 2




# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 15 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Fonts/Shaders/FSL/FontShaders.list" 2


