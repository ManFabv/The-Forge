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

# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/ImGui.vert.fsl" 1
# 24 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/ImGui.vert.fsl"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/ImGuiResources.h" 1
# 32 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/ImGuiResources.h"
STRUCT(UniformBlock)
{
 DATA(float4x4, ProjectionMatrix, None);
};

# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/ImGui.srt.h" 1
# 29 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/ImGui.srt.h"

#line 31

#line 33




# 38 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/ImGuiResources.h" 2
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/ImGui.vert.fsl" 2

STRUCT(VS_INPUT)
{
#line 28
 float2 pos [[attribute(0)]];
#line 29
 float2 uv [[attribute(1)]];
#line 30
 float4 col [[attribute(2)]];
};

STRUCT(PS_INPUT)
{
#line 35
 float4 pos [[position]];
#line 36
 float4 col ;
#line 37
 float2 uv ;
};


vertex PS_INPUT imgui_vert(
	VS_INPUT In[[stage_in]]
	,constant CBUFFER(UniformBlock)& _fslF0_gUniformBlock [[buffer(4)]] // main arg PerBatch
)
#line 41
{
	constant CBUFFER(UniformBlock)& gUniformBlock = _fslF0_gUniformBlock;
#line 43
// INIT_MAIN;
 PS_INPUT Out;
 Out.pos = mul(gUniformBlock.ProjectionMatrix, float4(In.pos.xy, 0.f, 1.f));
 Out.col = In.col;
 Out.uv = In.uv;
 {
 	return Out;
 }
#line 48
// RETURN(Out);
}
# 32 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/UI/Shaders/FSL/UIShaders.list" 2


