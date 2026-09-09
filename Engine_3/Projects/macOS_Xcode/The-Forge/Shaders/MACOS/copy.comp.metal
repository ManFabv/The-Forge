//--------------------------------------
// Generated from Forge Shading Language
//--------------------------------------

#define METAL
#define TARGET_MACOS
#include "includes/metal.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/ScreenshotShaders.list"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 482 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/ScreenshotShaders.list" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/../../../../Graphics/FSL/defaults.h" 1
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/../../../../Graphics/FSL/defaults.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h" 1
# 46 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/../../../../Graphics/FSL/metal_srt.h" 1
# 47 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/../../../../Graphics/FSL/fsl_srt.h" 2
# 26 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/../../../../Graphics/FSL/defaults.h" 2
# 144 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/../../../../Graphics/FSL/defaults.h"
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
# 2 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/ScreenshotShaders.list" 2



# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/Copy.comp.fsl" 1
# 25 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/Copy.comp.fsl"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/ShaderUtilities.h.fsl" 1
# 31 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/ShaderUtilities.h.fsl"
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/../Utilities/Math/ShaderUtilities.h" 1
# 50 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/../Utilities/Math/ShaderUtilities.h"
       float3x3 adjoint(float3x3 m)
{






    return float3x3(cross(m[1], m[2]), cross(m[2], m[0]), cross(m[0], m[1]));
}



       float3x3 adjoint_float4x4(float4x4 m) { return adjoint(to_f3x3(m)); }

       float linearizeDepth(float depth, float nearPlane, float farPlane)
{
    return (nearPlane * farPlane) / (farPlane + depth * (nearPlane - farPlane));
}

       float linearizeDepthReverseZ(float depth, float nearPlane, float farPlane)
{
    return (nearPlane * farPlane) / (nearPlane + depth * (farPlane - nearPlane));
}

       float2 octWrap_float2(float2 v)
{
    return (float2(1.f, 1.f) - float2(abs(v.y), abs(v.x))) * float2(v.x >= 0.f ? 1.f : -1.f, v.y >= 0.f ? 1.f : -1.f);
}

       float octWrap(float v, float w) { return ((1.0f - abs((w))) * ((v) >= 0.0f ? 1.0f : -1.0f)); }

       float2 encodeDir(float3 n)
{
    n /= (abs(n.x) + abs(n.y) + abs(n.z));

    float2 result = float2(n.x, n.y);
    if (n.z < 0.f)
        result = octWrap_float2(result);
    result = result * 0.5f + float2(0.5f, 0.5f);
    return result;
}

       float3 decodeDir(float2 encN)
{
    encN = encN * 2.0f - float2(1.0f, 1.f);

    float3 n;
    n.z = 1.0f - abs(encN.x) - abs(encN.y);

    n.xy = n.z >= 0.0f ? encN.xy : octWrap_float2(encN.xy);
    n = normalize(n);
# 116 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/../Utilities/Math/ShaderUtilities.h"
    return n;
}

       uint float2ToUnorm2x16(float x, float y)
{
    uint xx = uint(round(clamp(x, 0.f, 1.f) * 65535.0f));
    uint yy = uint(round(clamp(y, 0.f, 1.f) * 65535.0f));
    return (uint(0x0000FFFF) & xx) | ((yy << 16) & uint(0xFFFF0000));
}

       uint packFloat3DirectionToHalf2(float3 dir)
{
    float absLength = abs(dir.x) + abs(dir.y) + abs(dir.z);
    if (absLength != 0.f)
    {
        float3 enc;
        enc.x = dir.x / absLength;
        enc.y = dir.y / absLength;
        enc.z = dir.z / absLength;
        if (enc.z < 0)
        {
            float oldX = enc.x;
            enc.x = octWrap(enc.x, enc.y);
            enc.y = octWrap(enc.y, oldX);
        }
        enc.x = enc.x * 0.5f + 0.5f;
        enc.y = enc.y * 0.5f + 0.5f;
        return float2ToUnorm2x16(enc.x, enc.y);
    }

    return 0;
}
# 157 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/../Utilities/Math/ShaderUtilities.h"
       float pack3PNForFP32(float3 channel)
{

    channel = saturate(channel);




    uint uValue;



    uValue = (uint(channel.x * 65535.0f + 0.5f));


    uValue |= (uint(channel.y * 255.0f + 0.5f)) << 16;
# 184 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/../Utilities/Math/ShaderUtilities.h"
    uValue |= (uint(channel.z * 253.0f + 1.5f)) << 24;


    return asfloat(uValue);
# 199 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/../Utilities/Math/ShaderUtilities.h"
}




       float3 unpack3PNFromFP32(float fFloatFromFP32)
{
    float a, b, c;


    uint uInputFloat = asuint(fFloatFromFP32);
# 224 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/../Utilities/Math/ShaderUtilities.h"
    a = ((uInputFloat)&0xFFFF) / 65535.0f;

    b = ((uInputFloat >> 16) & 0xFF) / 255.0f;



    c = (((uInputFloat >> 24) & 0xFF) - 1.0f) / 253.0f;

    return float3(a, b, c);
}

       uint packUintFromUint2x16(uint2 v) { return (uint(0x0000FFFF) & v.x) | ((v.y << 16) & uint(0xFFFF0000)); }

       uint2 unpackUint2x16FromUint32(uint v) { return uint2(v & uint(0x0000FFFF), (v >> 16) & uint(0x0000FFFF)); }

       uint2 packUint4x16FromUint2x32(uint4 v)
{
    return uint2((uint(0x0000FFFF) & v.x) | ((v.y << 16) & uint(0xFFFF0000)), (uint(0x0000FFFF) & v.z) | ((v.w << 16) & uint(0xFFFF0000)));
}

       uint4 unpackUint4x16FromUint2x32(uint2 v)
{
    return uint4(uint(0x0000FFFF) & v.x, (v.x >> 16) & uint(0x0000FFFF), uint(0x0000FFFF) & v.y, (v.y >> 16) & uint(0x0000FFFF));
}
# 32 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/ShaderUtilities.h.fsl" 2

STATIC const float PI = 3.1415926535897932384626422832795028841971f;

uint pack2Floats(float low, float high)
{



 return as_type<uint>(half2(float2(low, high)));



}

float2 unpack2Floats(uint p)
{



 return float2(as_type<half2>(p));



}
# 157 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Tools/ForgeShadingLanguage/includes/../../../../Common_3/Graphics/ShaderUtilities.h.fsl"
float2 sign_not_zero(float2 v)
{
 return step(0.0, v) * 2.0 - float2(1, 1);
}


uint packR11G11B10Float(float3 rgb)
{


 uint r = pack2Floats((rgb.r), 0.0f) & 0xFFFF;
 uint g = pack2Floats((rgb.g), 0.0f) & 0xFFFF;
 uint b = pack2Floats((rgb.b), 0.0f) & 0xFFFF;

 return ((r >> 4) & 0x7FF) | (((g >> 4) & 0x7FF) << 11) | (((b >> 5) & 0x3FF) << 22);
}

float3 unpackR11G11B10Float(uint valIn)
{
 float3 rgb;
 rgb.x = float(unpack2Floats(((valIn & 0x7FF) << 4)).x);
 rgb.y = float(unpack2Floats((((valIn >> 11) & 0x7FF) << 4)).x);
 rgb.z = float(unpack2Floats((((valIn >> 22) & 0x3FF) << 5)).x);

 return rgb;
}


float Pow5(float x)
{
 float xx = x * x;
 return xx * xx * x;
}

float random(float3 seed, float3 freq)
{

 float dt = dot(floor(seed * freq), float3(53.1215f, 21.1352f, 9.1322f));

 return frac(sin(dt) * 2105.2354f);
}







float3 FresnelSchlickRoughness(float cosTheta, float3 F0, float roughness)
{

 float3 ret = f3(0.0f);
 float powTheta = Pow5(1.0f - cosTheta);
 float oneMinusRough = float(1.0f - roughness);

 ret.x = F0.x + (max(oneMinusRough, F0.x) - F0.x) * powTheta;
 ret.y = F0.y + (max(oneMinusRough, F0.y) - F0.y) * powTheta;
 ret.z = F0.z + (max(oneMinusRough, F0.z) - F0.z) * powTheta;

 return ret;
}



float D_GGX(float a2, float NoH)
{
 float d = (NoH * a2 - NoH) * NoH + 1.0f;
 return a2 / (PI*d*d);
}



float Vis_SmithJointApprox(float a2, float NoV, float NoL)
{
 float a = sqrt(a2);
 float Vis_SmithV = NoL * (NoV * (1.0f - a) + a);
 float Vis_SmithL = NoV * (NoL * (1.0f - a) + a);
 return 0.5f * rcp(max(Vis_SmithV + Vis_SmithL, 0.01f));
}


float3 F_Schlick(float3 SpecularColor, float VoH)
{
 float Fc = Pow5(1.0f - VoH);



 return saturate(SpecularColor.g) * Fc + (1.0f - Fc) * SpecularColor;
}


float3 SpecularGGX(float Roughness, inout(float3) SpecularColor, float NoL, float Nov, float NoH, float VoH)
{
 float a = Roughness * Roughness;
 float a2 = a * a;



 float D = D_GGX(a2, NoH);

 float Vis = Vis_SmithJointApprox(a2, Nov, NoL);

 SpecularColor = F_Schlick(SpecularColor, VoH);

 return (D * Vis) * SpecularColor;
}

float3 PBR_shadowFactor(
 float NoL, float NoV,
 float3 ViewVec, float3 HalfVec, float3 NormalVec,
 float3 albedo, inout(float3) specColor, float Roughness, float Metallic, float shadowFactor)
{
 float NoH = saturate(dot(NormalVec, HalfVec));
 float VoH = saturate(dot(ViewVec, HalfVec));


 float3 specularTerm = lerp(f3(0.0f), SpecularGGX(Roughness, specColor, NoL, NoV, NoH, VoH), shadowFactor);
 return (albedo + specularTerm);
}

float3 PBR(
 float NoL, float NoV,
 float3 ViewVec, float3 HalfVec, float3 NormalVec,
 float3 albedo, inout(float3) specColor, float Roughness, float Metallic)
{
 float NoH = saturate(dot(NormalVec, HalfVec));
 float VoH = saturate(dot(ViewVec, HalfVec));


 float3 specularTerm = SpecularGGX(Roughness, specColor, NoL, NoV, NoH, VoH);
 return (albedo + specularTerm);
}

float3 calcPointLightShade(
 float NoV,
 float3 ViewVec, float3 NormalVec,
 float3 albedo, inout(float3) specColor, float Roughness, float Metallic,
 float3 fragWorldPos, float3 lightPos, float3 lightCol, float lightRadius, bool isTwoSided)
{

 float3 toLight = lightPos - fragWorldPos;


 float3 lVec = toLight * (1.0f / lightRadius);
 float attenuation = saturate(1.0f - dot(lVec, lVec));


 toLight = normalize(toLight);


 float NoL = dot(NormalVec, toLight);

 NoL = (isTwoSided ? abs(NoL) : saturate(NoL));


 float3 HalfVec = normalize(ViewVec + toLight);

 float3 shadedColor = PBR(
    NoL, NoV,
    ViewVec, HalfVec, NormalVec,
    albedo, specColor,
    Roughness, Metallic);

 return shadedColor * lightCol * attenuation * NoL;
}

float calcESMShadowFactor(inout(float4) posLS, Tex2D(float) pShadowMap, SamplerState sh, float pEsmControl)
{
 float shadowFactor = 0.0;


 posLS /= posLS.w;
 posLS.y *= -1;
 posLS.xy = posLS.xy * 0.5 + f2(0.5);

 if (all(GreaterThan(posLS.xy, 0.0f)) && all(LessThan(posLS.xy, 1.0f)))
 {
  if( AllGreaterThan(abs(posLS.xy-f2(0.5)), 0.5) )
  {
   return shadowFactor;
  }


  const float GaussianKernel[3][3] =
  {
   { 1.0, 2.0, 1.0 },
   { 2.0, 4.0, 2.0 },
   { 1.0, 2.0, 1.0 }
  };

  float avgShadowDepthSample = 0.0;


  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2(-1, -1)).r * GaussianKernel[0][0];
  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2(-1, 0)).r * GaussianKernel[0][1];
  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2(-1, 1)).r * GaussianKernel[0][2];
  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2( 0, -1)).r * GaussianKernel[1][0];
  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2( 0, 0)).r * GaussianKernel[1][1];
  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2( 0, 1)).r * GaussianKernel[1][2];
  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2( 1, -1)).r * GaussianKernel[2][0];
  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2( 1, 0)).r * GaussianKernel[2][1];
  avgShadowDepthSample += SampleLvlOffsetTex2D(pShadowMap, sh, posLS.xy, 0, int2( 1, 1)).r * GaussianKernel[2][2];

  avgShadowDepthSample /= 16.0;

  shadowFactor = saturate(exp((posLS.z - avgShadowDepthSample) * pEsmControl));
 }

 return shadowFactor;
}





float3 rayTriangleIntersection(float3 p0, float3 p1, float3 p2, float3 o, float3 d)
{
 float3 v0v1 = p1-p0;
 float3 v0v2 = p2-p0;
 float3 pvec = cross(d,v0v2);
 float det = dot(v0v1,pvec);
 float invDet = 1/det;
 float3 tvec = o - p0;
 float u = dot(tvec,pvec) * invDet;
 float3 qvec = cross(tvec,v0v1);
 float v = dot(d,qvec) *invDet;
 float w = 1.0f - v - u;
 return float3(w,u,v);
}



float4x4 InverseProjectionMatrixPerspectiveReverseZ(float4x4 proj)
{
 float4x4 ret = proj;
 ret[0][0] = 1.0 / proj[0][0];
 ret[1][1] = 1.0 / proj[1][1];
 ret[2][2] = 0;
 ret[2][3] = 1.0 / proj[3][2];
 ret[3][2] = 1;
 ret[3][3] = -proj[3][2] / proj[2][2];
 return ret;
}
# 26 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/Copy.comp.fsl" 2
# 1 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/Copy.comp.srt.h" 1
# 27 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/Copy.comp.srt.h"
STRUCT(ScreenShotParams)
{
 DATA(uint, saveAsHDR, None);
 DATA(uint, convertToSrgb, None);
 DATA(uint, flipRedBlue, None);
    DATA(uint, pad0, None);
};



#line 38
#line 39



#line 43


# 27 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/Copy.comp.fsl" 2

float linearToSrgbf(float val)
{
 if( val < 0.0031308f )
        return val *= 12.92f;
    return 1.055f * pow(val,1.0f/2.4f) - 0.055f;
}

float4 linear4ToSrgb4(thread Tex2D(float4)& gInputTexture, constant CBUFFER(ScreenShotParams)& gScreenShotConstants, device RWByteBuffer *gOutputBuffer, float4 v)
{
 v.x = linearToSrgbf(saturate(v.x));
 v.y = linearToSrgbf(saturate(v.y));
 v.z = linearToSrgbf(saturate(v.z));
 v.w = saturate(v.w);
 return v;
}


// [numthreads(8, 8, 1)]
kernel void copy_comp(
	uint3 DTid SV_DISPATCHTHREADID
	,constant CBUFFER(ScreenShotParams)& _fslF0_gScreenShotConstants [[buffer(4)]] // main arg PerDraw
	,device RWByteBuffer* _fslF0_gOutputBuffer [[buffer(5)]] // main arg PerDraw
	,Tex2D(float4) _fslF0_gInputTexture [[texture(0)]] // main arg PerDraw
)
#line 46
{
	constant CBUFFER(ScreenShotParams)& gScreenShotConstants = _fslF0_gScreenShotConstants;
	device RWByteBuffer*  gOutputBuffer = _fslF0_gOutputBuffer;
	Tex2D(float4)  gInputTexture = _fslF0_gInputTexture;
#line 48
// INIT_MAIN;

 uint2 srcXY = DTid.xy;
 uint2 inputDims = uint2(GetDimensions(gInputTexture, NO_SAMPLER));
# 65 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/Copy.comp.fsl"
 if (srcXY.x >= inputDims.x || srcXY.y >= inputDims.y)
 {
  {
  	return;
  }
#line 67
//  RETURN();
 }


 float2 uv = float2(float(srcXY.x + 0.5f) / inputDims.x, float(srcXY.y + 0.5f) / inputDims.y);




 float4 color = SampleLvlTex2D(gInputTexture, gSamplerPointClamp, uv, 0);
 uint offset = srcXY.x + srcXY.y * inputDims.x;


 if (gScreenShotConstants.flipRedBlue > 0)
 {
  float temp = color.r;
  color.r = color.b;
  color.b = temp;
 }

 if (gScreenShotConstants.convertToSrgb > 0)
 {
  color = linear4ToSrgb4(gInputTexture, gScreenShotConstants, gOutputBuffer, color);
 }

 if (gScreenShotConstants.saveAsHDR > 0)
 {
  uint4 uintColor = asuint(color);
  StoreByte(gOutputBuffer, (offset * 4 + 0) << 2, uintColor.r);
  StoreByte(gOutputBuffer, (offset * 4 + 1) << 2, uintColor.g);
  StoreByte(gOutputBuffer, (offset * 4 + 2) << 2, uintColor.b);
  StoreByte(gOutputBuffer, (offset * 4 + 3) << 2, uintColor.a);
 }
 else
 {
  uint packedColor = pack_float_to_unorm4x8(color);
  StoreByte(gOutputBuffer, offset << 2, packedColor);
 }

 {
 	return;
 }
#line 106
// RETURN();
}
# 6 "/Users/fabricio/Dev/TheForgeProject/The-Forge/Common_3/Application/Screenshot/Shaders/FSL/ScreenshotShaders.list" 2


