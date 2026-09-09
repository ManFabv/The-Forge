//--------------------------------------
// Generated from Forge Shading Language
//--------------------------------------

#define METAL
#define TARGET_MACOS
#include "includes/metal.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 482 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/../../../../../Graphics/FSL/defaults.h" 1
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/../../../../../Graphics/FSL/defaults.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/../../../../../Graphics/FSL/fsl_srt.h" 1
# 46 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/../../../../../Graphics/FSL/fsl_srt.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/../../../../../Graphics/FSL/metal_srt.h" 1
# 47 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/../../../../../Graphics/FSL/fsl_srt.h" 2
# 26 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/../../../../../Graphics/FSL/defaults.h" 2
# 144 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/../../../../../Graphics/FSL/defaults.h"
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
# 2 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2



# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Joint.frag.fsl" 1
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Joint.frag.fsl"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationResources.h" 1
# 32 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationResources.h"
STRUCT(UniformBlock)
{



    DATA(float4x4, mvp, None);

    DATA(float4x4, viewMatrix, None);
    DATA(float4, color[804], None);

    DATA(float4, lightPosition, None);
    DATA(float4, lightColor, None);
    DATA(float4, jointColor, None);
    DATA(uint4, skeletonInfo, None);
    DATA(float4x4, toWorld[804], None);
};
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Animation.srt.h" 1
# 30 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Animation.srt.h"

#line 32

# 49 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationResources.h" 2
# 26 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Joint.frag.fsl" 2

STRUCT(VSOutput)
{
#line 29
    float4 Position [[position]];
#line 30
    float4 QuadCoord ;
#line 31
    float4 LightDirection ;
};


fragment float4 joint_frag(
	VSOutput In[[stage_in]]
	,constant CBUFFER(UniformBlock)& _fslF0_gUniformBlock [[buffer(4)]] // main arg PerDraw
)
#line 35
{
	constant CBUFFER(UniformBlock)& gUniformBlock = _fslF0_gUniformBlock;
	In.Position.w = rcp(In.Position.w);

#line 37
//    INIT_MAIN;
    float4 Out;
    float2 texCoord = In.QuadCoord.xy;
    float radius = length(texCoord);

    if( radius > 1.0)
    {
        clip(-1);
    }
    float4 localNormal = float4(In.QuadCoord.xy,0.0f,0.0f);
    localNormal.xyz = lerp( float3( 0.0f, 0.0f, -1.0f ), float3(In.QuadCoord.xy,0.0f), radius );
    float4 normal = normalize(mul(gUniformBlock.viewMatrix, normalize(localNormal)));
    float3 lightDir = In.LightDirection.xyz;
    float lightIntensity = 1.0f;
    float ambientCoeff = 0.4;
    float3 baseColor = gUniformBlock.jointColor.xyz;
    float3 blendedColor = (gUniformBlock.lightColor.xyz * baseColor) * lightIntensity;
    float3 diffuse = blendedColor * max(dot(normal.xyz, lightDir), 0.0);
    float3 ambient = baseColor * ambientCoeff;
    Out = float4(diffuse + ambient, 1.0);
    {
    	return Out;
    }
#line 57
//    RETURN(Out);
}
# 6 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2


# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 33 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/metal_ext.h" 1
# 34 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 2
# 9 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2








# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 18 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2


