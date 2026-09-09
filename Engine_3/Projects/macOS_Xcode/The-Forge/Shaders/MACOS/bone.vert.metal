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








# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/fsl_ext.h" 1
# 18 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2

# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Bone.vert.fsl" 1
# 28 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Bone.vert.fsl"
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
# 29 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/Bone.vert.fsl" 2

STRUCT(VSInput)
{
#line 32
    float4 Position [[attribute(0)]];
#line 33
    float4 Normal [[attribute(1)]];
#line 34
    uint4 BoneIndices [[attribute(2)]];
};

STRUCT(VSOutput)
{
#line 39
    float4 Position [[position]];
#line 40
    float4 Color ;
};

float4x4 computeBoneTransform(constant CBUFFER(UniformBlock)& gUniformBlock,  uint InstanceID, uint childIndex, uint parentIndex )
{

    float4x4 result = float4x4( 0.0f, 0.0f, 0.0f, 0.0f,
                         0.0f, 0.0f, 0.0f, 0.0f,
                         0.0f, 0.0f, 0.0f, 0.0f,
                         0.0f, 0.0f, 0.0f, 1.0f );

    if ( childIndex == 0 )
    {
        return result;
    }

    uint numJoints = gUniformBlock.skeletonInfo.x;
    childIndex = ( InstanceID * numJoints ) + childIndex;
    parentIndex = ( InstanceID * numJoints ) + parentIndex;
    float4x4 parentMat = gUniformBlock.toWorld[parentIndex];
 float4x4 childMat = gUniformBlock.toWorld[childIndex];
    float3 boneDir;
    boneDir.x = getElem(childMat,3,0) - getElem(parentMat,3,0);
    boneDir.y = getElem(childMat,3,1) - getElem(parentMat,3,1);
    boneDir.z = getElem(childMat,3,2) - getElem(parentMat,3,2);
    float boneLen = length(boneDir);
    float3 normal = normalize(boneDir);
    float3 binormal;
    float3 tangent;
    if ( abs( normal.x ) > 0.707 )
    {

        float a = normal.y * normal.y + normal.z * normal.z;
        float k = 1.0f / sqrt( a );
        binormal.x = 0;
        binormal.y = -normal.z * k;
        binormal.z = normal.y * k;

        tangent.x = a * k;
        tangent.y = -normal.x * binormal.z;
        tangent.z = normal.x * binormal.y;
    }
    else
    {

        float a = normal.x * normal.x + normal.y * normal.y;
        float k = 1.0f / sqrt( a );
        binormal.x = ( -normal.y * k );
        binormal.y =( normal.x * k );
        binormal.z = ( 0 );

        tangent.x = ( -normal.z * binormal.y );
        tangent.y =( normal.z * binormal.x );
        tangent.z = ( a * k );
    }
    binormal = binormal * boneLen;
    tangent = tangent * boneLen;
    setRow(result, float4(boneDir.x,binormal.x,tangent.x,getElem(parentMat,3,0)),0);
    setRow(result, float4(boneDir.y,binormal.y,tangent.y,getElem(parentMat,3,1)),1);
    setRow(result, float4(boneDir.z,binormal.z,tangent.z,getElem(parentMat,3,2)),2);
    setRow(result, float4(0.0f,0.0f,0.0f, 1.0f),3);
    return result;
}


vertex VSOutput bone_vert(
	VSInput In[[stage_in]]
	,uint InstanceID SV_INSTANCEID
	,constant CBUFFER(UniformBlock)& _fslF0_gUniformBlock [[buffer(4)]] // main arg PerDraw
)
#line 105
{
	constant CBUFFER(UniformBlock)& gUniformBlock = _fslF0_gUniformBlock;
#line 107
//    INIT_MAIN;
    VSOutput Out;
    uint numJoints = gUniformBlock.skeletonInfo.x;
    uint boneIndex = ( InstanceID * numJoints ) + In.BoneIndices.x;
    float4x4 matWorld = computeBoneTransform(gUniformBlock, InstanceID,In.BoneIndices.x,In.BoneIndices.y);




    float4x4 tempMat = mul(gUniformBlock.mvp, matWorld);

    Out.Position = mul(tempMat, In.Position);

    float4 normal = normalize(mul(matWorld, float4(In.Normal.xyz, 0.0f)));
    float4 pos = mul(matWorld, float4(In.Position.xyz, 1.0f));

    float lightIntensity = 1.0f;
    float quadraticCoeff = 1.2;
    float ambientCoeff = 0.4;

    float3 lightDir = normalize(gUniformBlock.lightPosition.xyz - pos.xyz);

    float3 baseColor = gUniformBlock.color[boneIndex].xyz;
    float3 blendedColor = (gUniformBlock.lightColor.xyz * baseColor) * lightIntensity;
    float3 diffuse = blendedColor * max(dot(normal.xyz, lightDir), 0.0);
    float3 ambient = baseColor * ambientCoeff;
    Out.Color = float4(diffuse + ambient, 1.0);

    {
    	return Out;
    }
#line 135
//    RETURN(Out);
}
# 20 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Resources/AnimationSystem/Animation/Shaders/FSL/AnimationShaders.list" 2


