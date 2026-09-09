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






# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 33 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/metal_ext.h" 1
# 34 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 2
# 9 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2

# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Joint.vert.fsl" 1
# 28 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Joint.vert.fsl"
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
# 29 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Joint.vert.fsl" 2

STRUCT(VSInput)
{
#line 32
    float4 Position [[attribute(0)]];
#line 33
    float4 Normal [[attribute(1)]];
};

STRUCT(VSOutput)
{
#line 38
    float4 Position [[position]];
#line 39
    float4 QuadCoord ;
#line 40
    float4 LightDirection ;
};


vertex VSOutput joint_vert(
	VSInput In[[stage_in]]
	,uint InstanceID SV_INSTANCEID
	,constant CBUFFER(UniformBlock)& _fslF0_gUniformBlock [[buffer(4)]] // main arg PerDraw
)
#line 44
{
	constant CBUFFER(UniformBlock)& gUniformBlock = _fslF0_gUniformBlock;
#line 46
//    INIT_MAIN;
    VSOutput Out;
    float4x4 matWorld = gUniformBlock.toWorld[InstanceID];


    float jointScale = length(getRow(matWorld,0).xyz);
    float4 jointPosition = getCol(matWorld,3);




    float4x4 tempMat = gUniformBlock.mvp;



    float4x4 tempViewMatrix = gUniformBlock.viewMatrix;
    float3 vSide = getRow(tempViewMatrix,0).xyz;
    float3 vUp = getRow(tempViewMatrix,1).xyz;


    float4 worldPosition = jointPosition;
    worldPosition.xyz += In.Position.x * vSide * jointScale;
    worldPosition.xyz += In.Position.y * vUp * jointScale;
    Out.Position = mul(tempMat, worldPosition);


    Out.QuadCoord = float4(normalize(In.Position.xy) * 1.414f, 0.0f, 0.0f );
    float4 pos = mul(gUniformBlock.toWorld[InstanceID], float4(In.Position.xyz, 1.0f));
    float3 lightDir = normalize(gUniformBlock.lightPosition.xyz - pos.xyz);
    Out.LightDirection = float4(lightDir,0.0f);

    {
    	return Out;
    }
#line 77
//    RETURN(Out);
}
# 11 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2






# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 18 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2


