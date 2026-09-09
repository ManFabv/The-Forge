//--------------------------------------
// Generated from Forge Shading Language
//--------------------------------------

#define METAL
#define TARGET_MACOS
#include "includes/metal.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 482 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/../../../../Graphics/FSL/defaults.h" 1
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/../../../../Graphics/FSL/defaults.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h" 1
# 46 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/../../../../Graphics/FSL/metal_srt.h" 1
# 47 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h" 2
# 26 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/../../../../Graphics/FSL/defaults.h" 2
# 144 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/../../../../Graphics/FSL/defaults.h"
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
# 2 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2

# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 33 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/metal_ext.h" 1
# 34 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 2
# 4 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2




# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 9 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2




# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 14 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2




# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 19 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2




# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 24 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2





# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 30 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2
# 39 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/TexturedMesh.vert.fsl" 1
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/TexturedMesh.vert.fsl"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/TexturedResources.h" 1
# 29 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/TexturedResources.h"
STRUCT(TexturedConstants)
{
    DATA(float4, color, None);
    DATA(float2, scaleBias, None);
};

# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/Textured.srt.h" 1
# 28 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/Textured.srt.h"

#line 30
#line 31

# 36 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/TexturedResources.h" 2
# 26 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/TexturedMesh.vert.fsl" 2



STRUCT(VsIn)
{
#line 31
 float2 position [[attribute(0)]];
#line 32
 float2 texcoord [[attribute(1)]];
};

STRUCT(VsOut)
{
#line 37
 float4 position [[position]];
#line 38
 float2 texcoord ;
};


vertex VsOut textured_mesh_vert(
	VsIn In[[stage_in]]
	,constant CBUFFER(TexturedConstants)& _fslF0_gUniformBlock [[buffer(4)]] // main arg PerDraw
)
#line 42
{
	constant CBUFFER(TexturedConstants)& gUniformBlock = _fslF0_gUniformBlock;
#line 44
// INIT_MAIN;
 VsOut Out;
 Out.position = float4(In.position.xy * gUniformBlock.scaleBias.xy + float2(-1.0f, 1.0f), 0.0f, 1.0f);
 Out.texcoord = In.texcoord;
 {
 	return Out;
 }
#line 48
// RETURN(Out);
}
# 40 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2


