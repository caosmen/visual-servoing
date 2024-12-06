Shader "Enviro3/EnviroTerrain"
{
	Properties
	{
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[HideInInspector][Toggle(_HEIGHTBLEND_ON)] _HEIGHTBLEND("HEIGHTBLEND", Float) = 1
		[HideInInspector]_TerrainHolesTexture("_TerrainHolesTexture", 2D) = "white" {}
		[HideInInspector][Toggle(_STOCHASTIC_ON)] _STOCHASTIC("STOCHASTIC", Float) = 0
		[HideInInspector]_Control("Control", 2D) = "white" {}
		[HideInInspector]_Control2("Control2", 2D) = "black" {}
		[HideInInspector]_Control1("Control1", 2D) = "black" {}
		[HideInInspector]_SSSIntensity("SSS Intensity", Range( 0 , 5)) = 3
		[HideInInspector]_SSSScale("SSS Scale", Range( 0 , 1)) = 0.5
		[HideInInspector]_SSSDistortion("SSS Distortion", Range( 0 , 1)) = 0.9
		[HideInInspector]_SnowTiling("Snow Tiling", Float) = 0
		[HideInInspector]_AlbedoArray("AlbedoArray", 2DArray) = "white" {}
		[HideInInspector]_NormalArray("NormalArray", 2DArray) = "bump" {}
		[HideInInspector]_MaskArray("MaskArray", 2DArray) = "white" {}
		[HideInInspector]_LayerScaleOffset4("_LayerScaleOffset4", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset8("_LayerScaleOffset8", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset0("_LayerScaleOffset0", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset9("_LayerScaleOffset9", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset1("_LayerScaleOffset1", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset5("_LayerScaleOffset5", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset2("_LayerScaleOffset2", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset10("_LayerScaleOffset10", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset6("_LayerScaleOffset6", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset7("_LayerScaleOffset7", Vector) = (0,0,0,0)
		[HideInInspector]_LayerScaleOffset11("_LayerScaleOffset11", Vector) = (0,0,0,0)
		[HideInInspector]_EnviroRainIntensity("_EnviroRainIntensity", Float) = 0
		[HideInInspector]_LayerScaleOffset3("_LayerScaleOffset3", Vector) = (0,0,0,0)
		[HideInInspector]_RainFlowIntensity("Rain Flow Intensity", Range( 0 , 2)) = 1
		[HideInInspector]_RainFlowDistortionScale("Rain Flow Distortion Scale", Float) = 10
		[HideInInspector]_RainFlowDistortionStrenght("Rain Flow Distortion Strenght", Range( 0 , 0.25)) = 0.1
		[HideInInspector][Toggle(_RAIN_ON)] _Rain("Rain", Float) = 1
		[HideInInspector]_RainFlowTiling("Rain Flow Tiling", Float) = 5
		[HideInInspector][SingleLineTexture]_SnowMask("Snow Mask", 2D) = "black" {}
		[HideInInspector]_RainFlowStrength("Rain Flow Strength", Range( 0 , 1)) = 0.5
		[HideInInspector][Normal][SingleLineTexture]_SnowNormal("Snow Normal", 2D) = "white" {}
		[HideInInspector][SingleLineTexture]_SnowAlbedo("Snow Albedo", 2D) = "white" {}
		[HideInInspector]_SnowHeightBlending("Snow Height Blending", Range( 0 , 10)) = 0
		[HideInInspector]_SnowSlopePower("Snow Slope Power", Float) = 2
		[HideInInspector]_EnviroWetness("_EnviroWetness", Range( 0 , 1)) = 0
		[HideInInspector]_RainDropIntensity("RainDropIntensity", Float) = 5
		[HideInInspector]_SnowDisplacement("SnowDisplacement", Range( 0 , 1)) = 0.01
		[HideInInspector]_RainFlowSmoothnessBoost("RainFlowSmoothnessBoost", Range( 0 , 4)) = 2
		[HideInInspector]_RainDropSpeed("Rain Drop Speed", Range( 0 , 2)) = 1
		[HideInInspector][Toggle(_PUDDLES_ON)] _Puddles("Puddles", Float) = 0
		[HideInInspector]_PuddleColor("Puddle Color", Color) = (0.6037736,0.6037736,0.6037736,0.6666667)
		[HideInInspector]_EnviroSnow("_EnviroSnow", Range( 0 , 2)) = 0
		[HideInInspector]_TessellationMinDistance("Tessellation Min Distance", Float) = 10
		[HideInInspector]_RainDropTiling("RainDropTiling", Float) = 10
		[HideInInspector]_PuddleWaveTiling("Puddle Wave Tiling", Float) = 1
		[HideInInspector][Toggle(_SNOW_ON)] _Snow("Snow", Float) = 0
		[HideInInspector]_TessellationFactor("Tessellation Factor", Range( 1 , 32)) = 16
		[HideInInspector]_RainDistanceFade("RainDistanceFade", Range( 0 , 10)) = 5
		[HideInInspector]_PuddleWaveIntensity("Puddle Wave Intensity", Range( 0 , 2)) = 1
		[HideInInspector]_TessellationMaxDistance("Tessellation Max Distance", Float) = 30
		[HideInInspector]_WetnessBoost("WetnessBoost", Range( 0 , 1)) = 0.3
		[HideInInspector]_PuddleIntensity("Puddle Intensity", Range( 0 , 5)) = 1
		[HideInInspector]_PuddleCoverageNoise("Puddle Coverage Noise", Float) = 0.5
		[HideInInspector][Normal][SingleLineTexture]_WaveNormal("Wave Normal", 2D) = "white" {}
		[HideInInspector]_SnowMetallic("Snow Metallic", Float) = 0
		[HideInInspector]_SnowSmoothness("Snow Smoothness", Float) = 1
		[HideInInspector]_SnowNormalScale("Snow Normal Scale", Float) = 0
		[HideInInspector]_Metallic00("Metallic00", Vector) = (0,0,0,0)
		[HideInInspector]_Metallic02("Metallic02", Vector) = (0,0,0,0)
		[HideInInspector]_Metallic01("Metallic01", Vector) = (0,0,0,0)
		[HideInInspector]_Occlusion0("Occlusion0", Vector) = (0,0,0,0)
		[HideInInspector]_Occlusion2("Occlusion2", Vector) = (0,0,0,0)
		[HideInInspector]_Occlusion1("Occlusion1", Vector) = (0,0,0,0)
		[HideInInspector]_HeightBlending("HeightBlending", Range( 0 , 1)) = 0
		[HideInInspector]_MipDistanceBlending("MipDistanceBlending", Float) = 40
		[HideInInspector]_HeightBlendStrength("_HeightBlendStrength", Float) = 1
		[HideInInspector][KeywordEnum(_4,_8,_12)] _SPLATCOUNT("SPLATCOUNT", Float) = 0
		[HideInInspector][KeywordEnum(Fast,Balance,Quality)] _Quality("Quality", Float) = 0
		[HideInInspector]_Smoothness00("Smoothness00", Vector) = (0,0,0,0)
		[HideInInspector]_Smoothness01("Smoothness01", Vector) = (0,0,0,0)
		[HideInInspector]_Smoothness02("Smoothness02", Vector) = (0,0,0,0)
		[HideInInspector]_ColorTint10("_ColorTint10", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint0("_ColorTint0", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint1("_ColorTint1", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint2("_ColorTint2", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint3("_ColorTint3", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint4("_ColorTint4", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint5("_ColorTint5", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint6("_ColorTint6", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint7("_ColorTint7", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint8("_ColorTint8", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint9("_ColorTint9", Color) = (0,0,0,0)
		[HideInInspector]_ColorTint11("_ColorTint11", Color) = (0,0,0,0)
		[HideInInspector]_HeightContrast1("_HeightContrast1", Vector) = (0,0,0,0)
		[HideInInspector]_SamplingType1("_SamplingType1", Vector) = (0,0,0,0)
		[HideInInspector]_DisplacementMod1("_DisplacementMod1", Vector) = (0,0,0,0)
		[HideInInspector]_NormalScale01("_NormalScale01", Vector) = (0,0,0,0)
		[HideInInspector]_HeightContrast0("_HeightContrast0", Vector) = (0,0,0,0)
		[HideInInspector]_NormalScale00("_NormalScale00", Vector) = (0,0,0,0)
		[HideInInspector]_NormalScale02("_NormalScale02", Vector) = (0,0,0,0)
		[HideInInspector]_SamplingType0("_SamplingType0", Vector) = (0,0,0,0)
		[HideInInspector]_DisplacementMod0("_DisplacementMod0", Vector) = (0,0,0,0)
		[HideInInspector]_HeightContrast2("_HeightContrast2", Vector) = (0,0,0,0)
		[HideInInspector]_SamplingType2("_SamplingType2", Vector) = (0,0,0,0)
		[HideInInspector]_DisplacementMod2("_DisplacementMod2", Vector) = (0,0,0,0)
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		[HideInInspector] _RenderQueueType("Render Queue Type", Float) = 1
		//[HideInInspector][ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		[HideInInspector][ToggleUI] _SupportDecals("Support Decals", Float) = 1.0
		[HideInInspector] _StencilRef("Stencil Ref", Int) = 0 // StencilUsage.Clear
		[HideInInspector] _StencilWriteMask("Stencil Write Mask", Int) = 3 // StencilUsage.RequiresDeferredLighting | StencilUsage.SubsurfaceScattering
		[HideInInspector] _StencilRefDepth("Stencil Ref Depth", Int) = 0 // Nothing
		[HideInInspector] _StencilWriteMaskDepth("Stencil Write Mask Depth", Int) = 8 // StencilUsage.TraceReflectionRay
		[HideInInspector] _StencilRefMV("Stencil Ref MV", Int) = 32 // StencilUsage.ObjectMotionVector
		[HideInInspector] _StencilWriteMaskMV("Stencil Write Mask MV", Int) = 32 // StencilUsage.ObjectMotionVector
		[HideInInspector] _StencilRefDistortionVec("Stencil Ref Distortion Vec", Int) = 4 				// DEPRECATED
		[HideInInspector] _StencilWriteMaskDistortionVec("Stencil Write Mask Distortion Vec", Int) = 4	// DEPRECATED
		[HideInInspector] _StencilWriteMaskGBuffer("Stencil Write Mask GBuffer", Int) = 3 // StencilUsage.RequiresDeferredLighting | StencilUsage.SubsurfaceScattering
		[HideInInspector] _StencilRefGBuffer("Stencil Ref GBuffer", Int) = 2 // StencilUsage.RequiresDeferredLighting
		[HideInInspector] _ZTestGBuffer("ZTest GBuffer", Int) = 4
		[HideInInspector][ToggleUI] _RequireSplitLighting("Require Split Lighting", Float) = 0
		[HideInInspector][ToggleUI] _ReceivesSSR("Receives SSR", Float) = 1
		[HideInInspector][ToggleUI] _ReceivesSSRTransparent("Receives SSR Transparent", Float) = 0
		[HideInInspector] _SurfaceType("Surface Type", Float) = 0
		[HideInInspector] _BlendMode("Blend Mode", Float) = 0
		[HideInInspector] _SrcBlend("Src Blend", Float) = 1
		[HideInInspector] _DstBlend("Dst Blend", Float) = 0
		[HideInInspector] _AlphaSrcBlend("Alpha Src Blend", Float) = 1
		[HideInInspector] _AlphaDstBlend("Alpha Dst Blend", Float) = 0
		[HideInInspector][ToggleUI] _ZWrite("ZWrite", Float) = 1
		[HideInInspector][ToggleUI] _TransparentZWrite("Transparent ZWrite", Float) = 0
		[HideInInspector] _CullMode("Cull Mode", Float) = 2
		[HideInInspector] _TransparentSortPriority("Transparent Sort Priority", Float) = 0
		[HideInInspector][ToggleUI] _EnableFogOnTransparent("Enable Fog", Float) = 1
		[HideInInspector] _CullModeForward("Cull Mode Forward", Float) = 2 // This mode is dedicated to Forward to correctly handle backface then front face rendering thin transparent
		[HideInInspector][Enum(UnityEditor.Rendering.HighDefinition.TransparentCullMode)] _TransparentCullMode("Transparent Cull Mode", Int) = 2 // Back culling by default
		[HideInInspector] _ZTestDepthEqualForOpaque("ZTest Depth Equal For Opaque", Int) = 4 // Less equal
		[HideInInspector][Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent("ZTest Transparent", Int) = 4 // Less equal
		[HideInInspector][ToggleUI] _TransparentBackfaceEnable("Transparent Backface Enable", Float) = 0
		[HideInInspector][ToggleUI] _AlphaCutoffEnable("Alpha Cutoff Enable", Float) = 0
		[HideInInspector][ToggleUI] _UseShadowThreshold("Use Shadow Threshold", Float) = 0
		[HideInInspector][ToggleUI] _DoubleSidedEnable("Double Sided Enable", Float) = 0
		[HideInInspector][Enum(Flip, 0, Mirror, 1, None, 2)] _DoubleSidedNormalMode("Double Sided Normal Mode", Float) = 2
		[HideInInspector] _DoubleSidedConstants("DoubleSidedConstants", Vector) = (1,1,-1,0)

		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleUI] _TransparentWritingMotionVec("Transparent Writing MotionVec", Float) = 0
		[HideInInspector][Enum(UnityEditor.Rendering.HighDefinition.OpaqueCullMode)] _OpaqueCullMode("Opaque Cull Mode", Int) = 2 // Back culling by default
		[HideInInspector][ToggleUI] _EnableBlendModePreserveSpecularLighting("Enable Blend Mode Preserve Specular Lighting", Float) = 1
		[HideInInspector] _EmissionColor("Color", Color) = (1, 1, 1)

		[HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}

		[HideInInspector][Enum(Auto, 0, On, 1, Off, 2)] _DoubleSidedGIMode("Double sided GI mode", Float) = 0

		[HideInInspector][ToggleUI] _AlphaToMaskInspectorValue("_AlphaToMaskInspectorValue", Float) = 0 // Property used to save the alpha to mask state in the inspector
        [HideInInspector][ToggleUI] _AlphaToMask("__alphaToMask", Float) = 0

		//_Refrac ( "Refraction Model", Float) = 0
        [HideInInspector][ToggleUI]_DepthOffsetEnable("Boolean", Float) = 1
        [HideInInspector][ToggleUI]_ConservativeDepthOffsetEnable("Boolean", Float) = 1
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Geometry-100" "TerrainCompatible"="True" "SplatCount"="12" }

		HLSLINCLUDE
		#pragma target 4.5
		#pragma exclude_renderers glcore gles gles3 ps4 ps5 

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		struct GlobalSurfaceDescription // GBuffer Forward META TransparentBackface
		{
			float3 BaseColor;
			float3 Normal;
			float3 BentNormal;
			float3 Specular;
			float CoatMask;
			float Metallic;
			float3 Emission;
			float Smoothness;
			float Occlusion;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float AlphaClipThresholdDepthPrepass;
			float AlphaClipThresholdDepthPostpass;
			float SpecularOcclusion;
			float SpecularAAScreenSpaceVariance;
			float SpecularAAThreshold;
			float RefractionIndex;
			float3 RefractionColor;
			float RefractionDistance;
			float DiffusionProfile;
			float TransmissionMask;
			float Thickness;
			float SubsurfaceMask;
			float Anisotropy;
			float3 Tangent;
			float IridescenceMask;
			float IridescenceThickness;
			float3 BakedGI;
			float3 BakedBackGI;
			float DepthOffset;
			float4 VTPackedFeedback;
		};

		struct AlphaSurfaceDescription // ShadowCaster
		{
			float3 Emission;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float3 BakedGI;
			float3 BakedBackGI;
			float DepthOffset;
			float4 VTPackedFeedback;
		};

		struct SceneSurfaceDescription // SceneSelection
		{
		    float3 Emission;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float RefractionIndex;
			float3 RefractionColor;
			float RefractionDistance;
			float3 BakedGI;
			float3 BakedBackGI;
			float DepthOffset;
			float4 VTPackedFeedback;
		};

		struct PrePassSurfaceDescription // DepthPrePass
		{
			float3 Normal;
			float3 Emission;
			float Smoothness;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float AlphaClipThresholdDepthPrepass;
			float3 BakedGI;
			float3 BakedBackGI;
			float DepthOffset;
			float4 VTPackedFeedback;
		};

		struct PostPassSurfaceDescription //DepthPostPass
		{
			float3 Emission;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float AlphaClipThresholdDepthPostpass;
			float3 BakedGI;
			float3 BakedBackGI;
			float DepthOffset;
			float4 VTPackedFeedback;
		};

		struct SmoothSurfaceDescription // MotionVectors DepthOnly
		{
			float3 Normal;
			float3 Emission;
			float Smoothness;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float3 BakedGI;
			float3 BakedBackGI;
			float DepthOffset;
			float4 VTPackedFeedback;
		};

        struct PickingSurfaceDescription //Picking
		{
            float3 BentNormal;
			float3 Emission;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float3 BakedGI;
			float3 BakedBackGI;
			float DepthOffset;
			float4 VTPackedFeedback;

			float3 ObjectSpaceNormal;
			float3 WorldSpaceNormal;
			float3 TangentSpaceNormal;
			float3 ObjectSpaceViewDirection;
			float3 WorldSpaceViewDirection;
			float3 ObjectSpacePosition;
		};

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlaneASE (float3 pos, float4 plane)
		{
			return dot (float4(pos,1.0f), plane);
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlaneASE(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlaneASE(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlaneASE(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlaneASE(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="GBuffer" }

			Cull [_CullMode]
			ZTest [_ZTestGBuffer]

			Stencil
			{
				Ref [_StencilRefGBuffer]
				WriteMask [_StencilWriteMaskGBuffer]
				Comp Always
				Pass Replace
			}


			ColorMask [_LightLayersMaskBuffer4] 4
			ColorMask [_LightLayersMaskBuffer5] 5

			HLSLPROGRAM
            #pragma shader_feature_local_fragment _ _DISABLE_DECALS
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            #pragma shader_feature_local _ _DOUBLESIDED_ON
            #pragma shader_feature_local _ _ALPHATEST_ON
            #define _AMBIENT_OCCLUSION 1
            #define HAVE_MESH_MODIFICATION
            #define ASE_SRP_VERSION 140011
            #if !defined(ASE_NEED_CULLFACE)
            #define ASE_NEED_CULLFACE 1
            #endif //ASE_NEED_CULLFACE
            #define ASE_USING_SAMPLING_MACROS 1

            #pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT

			#pragma multi_compile_fragment _ LIGHT_LAYERS
            #pragma multi_compile_fragment _ SHADOWS_SHADOWMASK
            #pragma multi_compile _ DEBUG_DISPLAY
            #pragma multi_compile _ LIGHTMAP_ON
            #pragma multi_compile _ DIRLIGHTMAP_COMBINED
            #pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
            #pragma multi_compile _ DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fragment DECALS_OFF DECALS_3RT DECALS_4RT
            #pragma multi_compile_fragment _ DECAL_SURFACE_GRADIENT

			#pragma vertex Vert
			#pragma fragment Frag

			#define SHADERPASS SHADERPASS_GBUFFER

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

            //#if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            //#define FRAG_INPUTS_ENABLE_STRIPPING
            //#endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
                #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif

            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
                #define RAYTRACING_SHADER_GRAPH_LOW
            #endif

            #ifndef SHADER_UNLIT
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			    #define ASE_NEED_CULLFACE 1
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif

            #ifndef DEBUG_DISPLAY
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif

            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ColorTint3;
			float4 _ColorTint2;
			float4 _ColorTint4;
			float4 _ColorTint5;
			float4 _ColorTint6;
			float4 _ColorTint7;
			float4 _ColorTint8;
			float4 _ColorTint9;
			float4 _ColorTint10;
			float4 _ColorTint11;
			float4 _HeightContrast0;
			float4 _HeightContrast1;
			float4 _HeightContrast2;
			float4 _DisplacementMod0;
			float4 _Occlusion2;
			float4 _PuddleColor;
			float4 _Occlusion1;
			float4 _Occlusion0;
			float4 _Metallic02;
			float4 _Metallic01;
			float4 _NormalScale00;
			float4 _NormalScale01;
			float4 _NormalScale02;
			float4 _Metallic00;
			float4 _ColorTint1;
			float4 _TerrainHolesTexture_ST;
			float4 _ColorTint0;
			float4 _LayerScaleOffset11;
			float4 _Smoothness02;
			float4 _Smoothness01;
			float4 _Smoothness00;
			float4 _DisplacementMod2;
			float4 _Control_ST;
			float4 _Control1_ST;
			float4 _Control2_ST;
			float4 _SamplingType0;
			float4 _SamplingType1;
			float4 _DisplacementMod1;
			float4 _LayerScaleOffset0;
			float4 _SamplingType2;
			float4 _LayerScaleOffset2;
			float4 _LayerScaleOffset3;
			float4 _LayerScaleOffset4;
			float4 _LayerScaleOffset5;
			float4 _LayerScaleOffset6;
			float4 _LayerScaleOffset7;
			float4 _LayerScaleOffset8;
			float4 _LayerScaleOffset9;
			float4 _LayerScaleOffset10;
			float4 _LayerScaleOffset1;
			float _SSSDistortion;
			float _SnowNormalScale;
			float _RainDropIntensity;
			float _SSSScale;
			float _TessellationMaxDistance;
			float _RainDropSpeed;
			float _SnowMetallic;
			float _SnowSmoothness;
			float _SSSIntensity;
			float _RainDropTiling;
			float _HeightBlendStrength;
			float _RainFlowIntensity;
			float _TessellationMinDistance;
			float _TessellationFactor;
			float _SnowDisplacement;
			float _EnviroSnow;
			float _SnowSlopePower;
			float _SnowHeightBlending;
			float _MipDistanceBlending;
			float _WetnessBoost;
			float _HeightBlending;
			float _RainDistanceFade;
			float _PuddleIntensity;
			float _EnviroWetness;
			float _SnowTiling;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _RainFlowStrength;
			float _EnviroRainIntensity;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _PuddleCoverageNoise;
			float _RainFlowSmoothnessBoost;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			    float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			    float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			    float _TessPhongStrength;
			    float _TessValue;
			    float _TessMin;
			    float _TessMax;
			    float _TessEdgeLength;
			    float _TessMaxDisp;
			#endif
			CBUFFER_END

            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Control1);
			SAMPLER(sampler_Control1);
			TEXTURE2D(_Control2);
			SAMPLER(sampler_Control2);
			TEXTURE2D_ARRAY(_AlbedoArray);
			SAMPLER(sampler_AlbedoArray);
			TEXTURE2D_ARRAY(_MaskArray);
			SAMPLER(sampler_MaskArray);
			TEXTURE2D(_SnowAlbedo);
			SAMPLER(sampler_SnowAlbedo);
			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			TEXTURE2D_ARRAY(_NormalArray);
			SAMPLER(sampler_NormalArray);
			TEXTURE2D(_WaveNormal);
			SAMPLER(sampler_WaveNormal);
			TEXTURE2D(_SnowNormal);
			SAMPLER(sampler_SnowNormal);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			TEXTURE2D(_SnowMask);
			SAMPLER(sampler_SnowMask);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_TANGENT
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _HEIGHTBLEND_ON
			#pragma shader_feature_local _SPLATCOUNT__4 _SPLATCOUNT__8 _SPLATCOUNT__12
			#pragma multi_compile_local _QUALITY_FAST _QUALITY_BALANCE _QUALITY_QUALITY
			#pragma shader_feature_local _STOCHASTIC_ON
			#pragma shader_feature_local _RAIN_ON
			#pragma shader_feature_local _TERRAIN_INSTANCED_PERPIXEL_NORMAL
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap
			#include "EnviroInclude.hlsl"


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2;
				float4 uv1 : TEXCOORD3;
				float4 uv2 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};


			void GetSplats( float4 in0, float4 in1, float4 in2, out float4 Out1, out float4 Out0 )
			{
				GetSplatsWeights(in0,in1,in2,Out0,Out1);
			}
			
			void GetUVS( float4 in0, float4 in1, float4 in2, float4 in3, float4 in4, float4 in5, float4 in6, float4 in7, float4 in8, float4 in9, float4 in10, float4 in11, float4 index, out float4 Out0, out float4 Out1, out float4 Out2, out float4 Out3 )
			{
				GetLayerUV(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,index,Out0,Out1,Out2,Out3);
			}
			
			void GetLayerSettings( float4 in0, float4 in1, float4 in2, float4 index, out float4 Out0 )
			{
				GetLayerValue(in0,in1,in2,index,Out0);
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			void StochasticTiling( float2 UV, out float2 UV1, out float2 UV2, out float2 UV3, out float W1, out float W2, out float W3 )
			{
				float2 vertex1, vertex2, vertex3;
				// Scaling of the input
				float2 uv = UV * 3.464; // 2 * sqrt (3)
				// Skew input space into simplex triangle grid
				const float2x2 gridToSkewedGrid = float2x2( 1.0, 0.0, -0.57735027, 1.15470054 );
				float2 skewedCoord = mul( gridToSkewedGrid, uv );
				// Compute local triangle vertex IDs and local barycentric coordinates
				int2 baseId = int2( floor( skewedCoord ) );
				float3 temp = float3( frac( skewedCoord ), 0 );
				temp.z = 1.0 - temp.x - temp.y;
				if ( temp.z > 0.0 )
				{
					W1 = temp.z;
					W2 = temp.y;
					W3 = temp.x;
					vertex1 = baseId;
					vertex2 = baseId + int2( 0, 1 );
					vertex3 = baseId + int2( 1, 0 );
				}
				else
				{
					W1 = -temp.z;
					W2 = 1.0 - temp.y;
					W3 = 1.0 - temp.x;
					vertex1 = baseId + int2( 1, 1 );
					vertex2 = baseId + int2( 1, 0 );
					vertex3 = baseId + int2( 0, 1 );
				}
				UV1 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex1 ) ) * 43758.5453 );
				UV2 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex2 ) ) * 43758.5453 );
				UV3 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex3 ) ) * 43758.5453 );
				return;
			}
			
			float2 UnityGradientNoiseDir( float2 p )
			{
				p = fmod(p , 289);
				float x = fmod((34 * p.x + 1) * p.x , 289) + p.y;
				x = fmod( (34 * x + 1) * x , 289);
				x = frac( x / 41 ) * 2 - 1;
				return normalize( float2(x - floor(x + 0.5 ), abs( x ) - 0.5 ) );
			}
			
			float UnityGradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 ip = floor( p );
				float2 fp = frac( p );
				float d00 = dot( UnityGradientNoiseDir( ip ), fp );
				float d01 = dot( UnityGradientNoiseDir( ip + float2( 0, 1 ) ), fp - float2( 0, 1 ) );
				float d10 = dot( UnityGradientNoiseDir( ip + float2( 1, 0 ) ), fp - float2( 1, 0 ) );
				float d11 = dot( UnityGradientNoiseDir( ip + float2( 1, 1 ) ), fp - float2( 1, 1 ) );
				fp = fp * fp * fp * ( fp * ( fp * 6 - 15 ) + 10 );
				return lerp( lerp( d00, d01, fp.y ), lerp( d10, d11, fp.y ), fp.x ) + 0.5;
			}
			
			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				surfaceData.baseColor =					surfaceDescription.BaseColor;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.transmissionMask =			surfaceDescription.TransmissionMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
                #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                    if (_EnableSSRefraction)
                    {
                        surfaceData.ior =                       surfaceDescription.RefractionIndex;
                        surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                        surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                        surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                        surfaceDescription.Alpha = 1.0;
                    }
                    else
                    {
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                        surfaceDescription.Alpha = 1.0;
                    }
                #else
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                #endif

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif

                #ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                    surfaceData.normalWS = float3(0, 1, 0);
                #endif

				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                    surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				#ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
                    float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
	
	            

	            
                #if ASE_SRP_VERSION >=140008
                #ifdef DECAL_NORMAL_BLENDING
					normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(normalTS, fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;

                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                     }
                    #endif

                    GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
                #else
					GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;
        
                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                    }
                    #endif
                #endif
                #endif
               

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz );
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
                    GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
				#endif

				#if defined(DEBUG_DISPLAY)
				    if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				    {
					   surfaceData.metallic = 0;
				    }
				    ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData); 
				#endif

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

                #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                    surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                #endif
			}

			// Get Surface And BuiltinData
			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                    LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif  
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);

				#ifdef _ALPHATEST_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
				#endif

				#ifdef _DEPTHOFFSET_ON
                    ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
				#endif

				float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				#ifdef _DEPTHOFFSET_ON
                    builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

                #ifdef UNITY_VIRTUAL_TEXTURING
                    builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
                    builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
                    builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

                builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification(inputMesh);
				float3 appendResult261 = (float3(_SnowDisplacement , _SnowDisplacement , _SnowDisplacement));
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float Snow_Amount174 = _EnviroSnow;
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float3 Snow_Displacement272 = ( ( appendResult261 * ase_worldNormal ) * ( Snow_Blending247 * Snow_Amount174 ) );
				#ifdef _SNOW_ON
				float3 staticSwitch279 = Snow_Displacement272;
				#else
				float3 staticSwitch279 = float3(0,0,0);
				#endif
				float3 DisplacementFinal282 = ( staticSwitch279 + float3(0,0,0) );
				
				float4 appendResult660 = (float4(cross( inputMesh.normalOS , float3(0,0,1) ) , -1.0));
				
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord7.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_texcoord5.xy = inputMesh.ase_texcoord.xy;
				outputPackedVaryingsMeshToPS.ase_texcoord6 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord5.zw = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord7.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = DisplacementFinal282;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = appendResult660;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.normalWS.xyz = normalWS;
				outputPackedVaryingsMeshToPS.tangentWS.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.uv1.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.uv2.xyzw = inputMesh.uv2;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput,
						OUTPUT_GBUFFER(outGBuffer)
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
						
						)
			{

				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				float3 positionRWS = packedInput.positionRWS.xyz;
				float3 normalWS = packedInput.normalWS.xyz;
				float4 tangentWS = packedInput.tangentWS.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.uv1.xyzw;
				input.texCoord2 = packedInput.uv2.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);
				SurfaceData surfaceData;
				BuiltinData builtinData;

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float localGetSplats43 = ( 0.0 );
				float2 uv_Control = packedInput.ase_texcoord5.xy * _Control_ST.xy + _Control_ST.zw;
				float4 SplatControl033 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch42 = SplatControl033;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch42 = SplatControl033;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch42 = SplatControl033;
				#else
				float4 staticSwitch42 = SplatControl033;
				#endif
				float4 in043 = staticSwitch42;
				float4 _Vector1 = float4(0,0,0,0);
				float2 uv_Control1 = packedInput.ase_texcoord5.xy * _Control1_ST.xy + _Control1_ST.zw;
				float4 SplatControl135 = SAMPLE_TEXTURE2D( _Control1, sampler_Control1, uv_Control1 );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch41 = _Vector1;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch41 = SplatControl135;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch41 = SplatControl135;
				#else
				float4 staticSwitch41 = _Vector1;
				#endif
				float4 in143 = staticSwitch41;
				float2 uv_Control2 = packedInput.ase_texcoord5.xy * _Control2_ST.xy + _Control2_ST.zw;
				float4 SplatControl234 = SAMPLE_TEXTURE2D( _Control2, sampler_Control2, uv_Control2 );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch40 = _Vector1;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch40 = _Vector1;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch40 = SplatControl234;
				#else
				float4 staticSwitch40 = _Vector1;
				#endif
				float4 in243 = staticSwitch40;
				float4 Out143 = float4( 0,0,0,0 );
				float4 Out043 = float4( 0,0,0,0 );
				{
				GetSplatsWeights(in043,in143,in243,Out043,Out143);
				}
				float4 SplatWeights198 = Out143;
				float4 temp_output_14_0_g1066 = SplatWeights198;
				float localGetLayerSettings894 = ( 0.0 );
				float4 in0894 = _SamplingType0;
				float4 in1894 = _SamplingType1;
				float4 in2894 = _SamplingType2;
				float4 SplatIndex44 = Out043;
				float4 index894 = SplatIndex44;
				float4 Out0894 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0894,in1894,in2894,index894,Out0894);
				}
				float4 samplingType895 = Out0894;
				float4 break896 = samplingType895;
				float2 appendResult69 = (float2(packedInput.ase_texcoord6.xyz.x , packedInput.ase_texcoord6.xyz.z));
				float localGetUVS58 = ( 0.0 );
				float4 in058 = _LayerScaleOffset0;
				float4 in158 = _LayerScaleOffset1;
				float4 in258 = _LayerScaleOffset2;
				float4 in358 = _LayerScaleOffset3;
				float4 in458 = _LayerScaleOffset4;
				float4 in558 = _LayerScaleOffset5;
				float4 in658 = _LayerScaleOffset6;
				float4 in758 = _LayerScaleOffset7;
				float4 in858 = _LayerScaleOffset8;
				float4 in958 = _LayerScaleOffset9;
				float4 in1058 = _LayerScaleOffset10;
				float4 in1158 = _LayerScaleOffset11;
				float4 index58 = SplatIndex44;
				float4 Out058 = float4( 0,0,0,0 );
				float4 Out158 = float4( 0,0,0,0 );
				float4 Out258 = float4( 0,0,0,0 );
				float4 Out358 = float4( 0,0,0,0 );
				{
				GetLayerUV(in058,in158,in258,in358,in458,in558,in658,in758,in858,in958,in1058,in1158,index58,Out058,Out158,Out258,Out358);
				}
				float4 break63 = Out058;
				float2 appendResult65 = (float2(break63.x , break63.y));
				float2 appendResult73 = (float2(break63.z , break63.w));
				float4 break86 = SplatIndex44;
				float3 appendResult93 = (float3(( ( appendResult69 * appendResult65 ) + appendResult73 ) , break86.x));
				float3 UV0100 = appendResult93;
				float3 break485 = UV0100;
				float2 appendResult493 = (float2(break485.x , break485.y));
				float2 temp_output_5_0_g1057 = appendResult493;
				int temp_output_4_0_g1057 = (int)break485.z;
				float2 appendResult87 = (float2(packedInput.ase_texcoord6.xyz.x , packedInput.ase_texcoord6.xyz.z));
				float2 Mip101 = ( appendResult87 * ( 1.0 / max( 0.001 , _MipDistanceBlending ) ) );
				float2 temp_output_9_0_g1057 = Mip101;
				float2 temp_output_12_0_g1057 = ddx( temp_output_9_0_g1057 );
				float2 temp_output_13_0_g1057 = ddy( temp_output_9_0_g1057 );
				float4 tex2DArrayNode3_g1057 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1057,(float)temp_output_4_0_g1057, temp_output_12_0_g1057, temp_output_13_0_g1057 );
				float localStochasticTiling190_g1058 = ( 0.0 );
				float2 Input_UV317_g1058 = temp_output_5_0_g1057;
				float2 UV190_g1058 = Input_UV317_g1058;
				float2 UV1190_g1058 = float2( 0,0 );
				float2 UV2190_g1058 = float2( 0,0 );
				float2 UV3190_g1058 = float2( 0,0 );
				float W1190_g1058 = 0.0;
				float W2190_g1058 = 0.0;
				float W3190_g1058 = 0.0;
				StochasticTiling( UV190_g1058 , UV1190_g1058 , UV2190_g1058 , UV3190_g1058 , W1190_g1058 , W2190_g1058 , W3190_g1058 );
				float Input_Index330_g1058 = (float)temp_output_4_0_g1057;
				float2 temp_output_358_0_g1058 = temp_output_12_0_g1057;
				float2 temp_output_359_0_g1058 = temp_output_13_0_g1057;
				float4 Output_2DArray152_g1058 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W1190_g1058 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W2190_g1058 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W3190_g1058 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1057 = Output_2DArray152_g1058;
				#else
				float4 staticSwitch7_g1057 = tex2DArrayNode3_g1057;
				#endif
				float4 ifLocalVar17_g1057 = 0;
				UNITY_BRANCH 
				if( break896.x > 0.0 )
				ifLocalVar17_g1057 = staticSwitch7_g1057;
				else if( break896.x == 0.0 )
				ifLocalVar17_g1057 = tex2DArrayNode3_g1057;
				float localGetUVS795 = ( 0.0 );
				float4 in0795 = _ColorTint0;
				float4 in1795 = _ColorTint1;
				float4 in2795 = _ColorTint2;
				float4 in3795 = _ColorTint3;
				float4 in4795 = _ColorTint4;
				float4 in5795 = _ColorTint5;
				float4 in6795 = _ColorTint6;
				float4 in7795 = _ColorTint7;
				float4 in8795 = _ColorTint8;
				float4 in9795 = _ColorTint9;
				float4 in10795 = _ColorTint10;
				float4 in11795 = _ColorTint11;
				float4 index795 = SplatIndex44;
				float4 Out0795 = float4( 0,0,0,0 );
				float4 Out1795 = float4( 0,0,0,0 );
				float4 Out2795 = float4( 0,0,0,0 );
				float4 Out3795 = float4( 0,0,0,0 );
				{
				GetLayerUV(in0795,in1795,in2795,in3795,in4795,in5795,in6795,in7795,in8795,in9795,in10795,in11795,index795,Out0795,Out1795,Out2795,Out3795);
				}
				float4 Color0796 = Out0795;
				float4 temp_output_616_0 = ( ifLocalVar17_g1057 * Color0796 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch511 = temp_output_616_0;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch511 = temp_output_616_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch511 = temp_output_616_0;
				#else
				float4 staticSwitch511 = temp_output_616_0;
				#endif
				float4 temp_output_2_0_g1065 = staticSwitch511;
				float4 temp_output_18_0_g1066 = float4( (temp_output_2_0_g1065).rgb , 0.0 );
				float4 break62 = Out158;
				float2 appendResult66 = (float2(break62.x , break62.y));
				float2 appendResult72 = (float2(break62.z , break62.w));
				float3 appendResult90 = (float3(( ( appendResult69 * appendResult66 ) + appendResult72 ) , break86.y));
				float3 UV197 = appendResult90;
				float3 break487 = UV197;
				float2 appendResult492 = (float2(break487.x , break487.y));
				float2 temp_output_5_0_g1061 = appendResult492;
				int temp_output_4_0_g1061 = (int)break487.z;
				float2 temp_output_9_0_g1061 = Mip101;
				float2 temp_output_12_0_g1061 = ddx( temp_output_9_0_g1061 );
				float2 temp_output_13_0_g1061 = ddy( temp_output_9_0_g1061 );
				float4 tex2DArrayNode3_g1061 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1061,(float)temp_output_4_0_g1061, temp_output_12_0_g1061, temp_output_13_0_g1061 );
				float localStochasticTiling190_g1062 = ( 0.0 );
				float2 Input_UV317_g1062 = temp_output_5_0_g1061;
				float2 UV190_g1062 = Input_UV317_g1062;
				float2 UV1190_g1062 = float2( 0,0 );
				float2 UV2190_g1062 = float2( 0,0 );
				float2 UV3190_g1062 = float2( 0,0 );
				float W1190_g1062 = 0.0;
				float W2190_g1062 = 0.0;
				float W3190_g1062 = 0.0;
				StochasticTiling( UV190_g1062 , UV1190_g1062 , UV2190_g1062 , UV3190_g1062 , W1190_g1062 , W2190_g1062 , W3190_g1062 );
				float Input_Index330_g1062 = (float)temp_output_4_0_g1061;
				float2 temp_output_358_0_g1062 = temp_output_12_0_g1061;
				float2 temp_output_359_0_g1062 = temp_output_13_0_g1061;
				float4 Output_2DArray152_g1062 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W1190_g1062 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W2190_g1062 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W3190_g1062 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1061 = Output_2DArray152_g1062;
				#else
				float4 staticSwitch7_g1061 = tex2DArrayNode3_g1061;
				#endif
				float4 ifLocalVar17_g1061 = 0;
				UNITY_BRANCH 
				if( break896.y > 0.0 )
				ifLocalVar17_g1061 = staticSwitch7_g1061;
				else if( break896.y == 0.0 )
				ifLocalVar17_g1061 = tex2DArrayNode3_g1061;
				float4 Color1797 = Out1795;
				float4 temp_output_617_0 = ( ifLocalVar17_g1061 * Color1797 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch508 = temp_output_617_0;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch508 = temp_output_617_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch508 = temp_output_617_0;
				#else
				float4 staticSwitch508 = temp_output_617_0;
				#endif
				float4 temp_output_22_0_g1066 = staticSwitch508;
				float4 _Vector2 = float4(0,0,0,0);
				float4 break60 = Out258;
				float2 appendResult67 = (float2(break60.x , break60.y));
				float2 appendResult79 = (float2(break60.z , break60.w));
				float3 appendResult91 = (float3(( ( appendResult69 * appendResult67 ) + appendResult79 ) , break86.z));
				float3 UV298 = appendResult91;
				float3 break488 = UV298;
				float2 appendResult495 = (float2(break488.x , break488.y));
				float2 temp_output_5_0_g1063 = appendResult495;
				int temp_output_4_0_g1063 = (int)break488.z;
				float2 temp_output_9_0_g1063 = Mip101;
				float2 temp_output_12_0_g1063 = ddx( temp_output_9_0_g1063 );
				float2 temp_output_13_0_g1063 = ddy( temp_output_9_0_g1063 );
				float4 tex2DArrayNode3_g1063 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1063,(float)temp_output_4_0_g1063, temp_output_12_0_g1063, temp_output_13_0_g1063 );
				float localStochasticTiling190_g1064 = ( 0.0 );
				float2 Input_UV317_g1064 = temp_output_5_0_g1063;
				float2 UV190_g1064 = Input_UV317_g1064;
				float2 UV1190_g1064 = float2( 0,0 );
				float2 UV2190_g1064 = float2( 0,0 );
				float2 UV3190_g1064 = float2( 0,0 );
				float W1190_g1064 = 0.0;
				float W2190_g1064 = 0.0;
				float W3190_g1064 = 0.0;
				StochasticTiling( UV190_g1064 , UV1190_g1064 , UV2190_g1064 , UV3190_g1064 , W1190_g1064 , W2190_g1064 , W3190_g1064 );
				float Input_Index330_g1064 = (float)temp_output_4_0_g1063;
				float2 temp_output_358_0_g1064 = temp_output_12_0_g1063;
				float2 temp_output_359_0_g1064 = temp_output_13_0_g1063;
				float4 Output_2DArray152_g1064 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W1190_g1064 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W2190_g1064 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W3190_g1064 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1063 = Output_2DArray152_g1064;
				#else
				float4 staticSwitch7_g1063 = tex2DArrayNode3_g1063;
				#endif
				float4 ifLocalVar17_g1063 = 0;
				UNITY_BRANCH 
				if( break896.z > 0.0 )
				ifLocalVar17_g1063 = staticSwitch7_g1063;
				else if( break896.z == 0.0 )
				ifLocalVar17_g1063 = tex2DArrayNode3_g1063;
				float4 Color2798 = Out2795;
				float4 temp_output_618_0 = ( ifLocalVar17_g1063 * Color2798 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch509 = _Vector2;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch509 = temp_output_618_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch509 = temp_output_618_0;
				#else
				float4 staticSwitch509 = _Vector2;
				#endif
				float4 temp_output_23_0_g1066 = staticSwitch509;
				float4 break61 = Out358;
				float2 appendResult68 = (float2(break61.x , break61.y));
				float2 appendResult78 = (float2(break61.z , break61.w));
				float3 appendResult92 = (float3(( ( appendResult69 * appendResult68 ) + appendResult78 ) , break86.w));
				float3 UV399 = appendResult92;
				float3 break486 = UV399;
				float2 appendResult491 = (float2(break486.x , break486.y));
				float2 temp_output_5_0_g1059 = appendResult491;
				int temp_output_4_0_g1059 = (int)break486.z;
				float2 temp_output_9_0_g1059 = Mip101;
				float2 temp_output_12_0_g1059 = ddx( temp_output_9_0_g1059 );
				float2 temp_output_13_0_g1059 = ddy( temp_output_9_0_g1059 );
				float4 tex2DArrayNode3_g1059 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1059,(float)temp_output_4_0_g1059, temp_output_12_0_g1059, temp_output_13_0_g1059 );
				float localStochasticTiling190_g1060 = ( 0.0 );
				float2 Input_UV317_g1060 = temp_output_5_0_g1059;
				float2 UV190_g1060 = Input_UV317_g1060;
				float2 UV1190_g1060 = float2( 0,0 );
				float2 UV2190_g1060 = float2( 0,0 );
				float2 UV3190_g1060 = float2( 0,0 );
				float W1190_g1060 = 0.0;
				float W2190_g1060 = 0.0;
				float W3190_g1060 = 0.0;
				StochasticTiling( UV190_g1060 , UV1190_g1060 , UV2190_g1060 , UV3190_g1060 , W1190_g1060 , W2190_g1060 , W3190_g1060 );
				float Input_Index330_g1060 = (float)temp_output_4_0_g1059;
				float2 temp_output_358_0_g1060 = temp_output_12_0_g1059;
				float2 temp_output_359_0_g1060 = temp_output_13_0_g1059;
				float4 Output_2DArray152_g1060 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W1190_g1060 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W2190_g1060 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W3190_g1060 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1059 = Output_2DArray152_g1060;
				#else
				float4 staticSwitch7_g1059 = tex2DArrayNode3_g1059;
				#endif
				float4 ifLocalVar17_g1059 = 0;
				UNITY_BRANCH 
				if( break896.w > 0.0 )
				ifLocalVar17_g1059 = staticSwitch7_g1059;
				else if( break896.w == 0.0 )
				ifLocalVar17_g1059 = tex2DArrayNode3_g1059;
				float4 Color3799 = Out3795;
				#if defined( _QUALITY_FAST )
				float4 staticSwitch510 = _Vector2;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch510 = _Vector2;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch510 = ( ifLocalVar17_g1059 * Color3799 );
				#else
				float4 staticSwitch510 = _Vector2;
				#endif
				float4 temp_output_24_0_g1066 = staticSwitch510;
				float4 weightedBlendVar30_g1066 = temp_output_14_0_g1066;
				float4 weightedBlend30_g1066 = ( weightedBlendVar30_g1066.x*temp_output_18_0_g1066 + weightedBlendVar30_g1066.y*temp_output_22_0_g1066 + weightedBlendVar30_g1066.z*temp_output_23_0_g1066 + weightedBlendVar30_g1066.w*temp_output_24_0_g1066 );
				float4 break899 = samplingType895;
				float2 temp_output_5_0_g11 = UV0100.xy;
				float4 break102 = SplatIndex44;
				int temp_output_4_0_g11 = (int)break102.x;
				float2 temp_output_9_0_g11 = Mip101;
				float2 temp_output_12_0_g11 = ddx( temp_output_9_0_g11 );
				float2 temp_output_13_0_g11 = ddy( temp_output_9_0_g11 );
				float4 tex2DArrayNode3_g11 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g11,(float)temp_output_4_0_g11, temp_output_12_0_g11, temp_output_13_0_g11 );
				float localStochasticTiling190_g12 = ( 0.0 );
				float2 Input_UV317_g12 = temp_output_5_0_g11;
				float2 UV190_g12 = Input_UV317_g12;
				float2 UV1190_g12 = float2( 0,0 );
				float2 UV2190_g12 = float2( 0,0 );
				float2 UV3190_g12 = float2( 0,0 );
				float W1190_g12 = 0.0;
				float W2190_g12 = 0.0;
				float W3190_g12 = 0.0;
				StochasticTiling( UV190_g12 , UV1190_g12 , UV2190_g12 , UV3190_g12 , W1190_g12 , W2190_g12 , W3190_g12 );
				float Input_Index330_g12 = (float)temp_output_4_0_g11;
				float2 temp_output_358_0_g12 = temp_output_12_0_g11;
				float2 temp_output_359_0_g12 = temp_output_13_0_g11;
				float4 Output_2DArray152_g12 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W1190_g12 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W2190_g12 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W3190_g12 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g11 = Output_2DArray152_g12;
				#else
				float4 staticSwitch7_g11 = tex2DArrayNode3_g11;
				#endif
				float4 ifLocalVar17_g11 = 0;
				UNITY_BRANCH 
				if( break899.x > 0.0 )
				ifLocalVar17_g11 = staticSwitch7_g11;
				else if( break899.x == 0.0 )
				ifLocalVar17_g11 = tex2DArrayNode3_g11;
				float4 break116 = ifLocalVar17_g11;
				float HeightMap0119 = break116.b;
				float localGetLayerSettings820 = ( 0.0 );
				float4 in0820 = _HeightContrast0;
				float4 in1820 = _HeightContrast1;
				float4 in2820 = _HeightContrast2;
				float4 index820 = SplatIndex44;
				float4 Out0820 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0820,in1820,in2820,index820,Out0820);
				}
				float4 HeightContrast824 = Out0820;
				float4 break834 = HeightContrast824;
				float temp_output_846_0 = ( HeightMap0119 * break834.x );
				#if defined( _QUALITY_FAST )
				float staticSwitch158 = temp_output_846_0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch158 = temp_output_846_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch158 = temp_output_846_0;
				#else
				float staticSwitch158 = temp_output_846_0;
				#endif
				float2 temp_output_5_0_g9 = UV197.xy;
				int temp_output_4_0_g9 = (int)break102.y;
				float2 temp_output_9_0_g9 = Mip101;
				float2 temp_output_12_0_g9 = ddx( temp_output_9_0_g9 );
				float2 temp_output_13_0_g9 = ddy( temp_output_9_0_g9 );
				float4 tex2DArrayNode3_g9 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g9,(float)temp_output_4_0_g9, temp_output_12_0_g9, temp_output_13_0_g9 );
				float localStochasticTiling190_g10 = ( 0.0 );
				float2 Input_UV317_g10 = temp_output_5_0_g9;
				float2 UV190_g10 = Input_UV317_g10;
				float2 UV1190_g10 = float2( 0,0 );
				float2 UV2190_g10 = float2( 0,0 );
				float2 UV3190_g10 = float2( 0,0 );
				float W1190_g10 = 0.0;
				float W2190_g10 = 0.0;
				float W3190_g10 = 0.0;
				StochasticTiling( UV190_g10 , UV1190_g10 , UV2190_g10 , UV3190_g10 , W1190_g10 , W2190_g10 , W3190_g10 );
				float Input_Index330_g10 = (float)temp_output_4_0_g9;
				float2 temp_output_358_0_g10 = temp_output_12_0_g9;
				float2 temp_output_359_0_g10 = temp_output_13_0_g9;
				float4 Output_2DArray152_g10 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W1190_g10 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W2190_g10 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W3190_g10 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g9 = Output_2DArray152_g10;
				#else
				float4 staticSwitch7_g9 = tex2DArrayNode3_g9;
				#endif
				float4 ifLocalVar17_g9 = 0;
				UNITY_BRANCH 
				if( break899.y > 0.0 )
				ifLocalVar17_g9 = staticSwitch7_g9;
				else if( break899.y == 0.0 )
				ifLocalVar17_g9 = tex2DArrayNode3_g9;
				float4 break115 = ifLocalVar17_g9;
				float HeightMap1118 = break115.b;
				float temp_output_847_0 = ( HeightMap1118 * break834.y );
				#if defined( _QUALITY_FAST )
				float staticSwitch159 = temp_output_847_0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch159 = temp_output_847_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch159 = temp_output_847_0;
				#else
				float staticSwitch159 = temp_output_847_0;
				#endif
				float2 temp_output_5_0_g7 = UV298.xy;
				int temp_output_4_0_g7 = (int)break102.z;
				float2 temp_output_9_0_g7 = Mip101;
				float2 temp_output_12_0_g7 = ddx( temp_output_9_0_g7 );
				float2 temp_output_13_0_g7 = ddy( temp_output_9_0_g7 );
				float4 tex2DArrayNode3_g7 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g7,(float)temp_output_4_0_g7, temp_output_12_0_g7, temp_output_13_0_g7 );
				float localStochasticTiling190_g8 = ( 0.0 );
				float2 Input_UV317_g8 = temp_output_5_0_g7;
				float2 UV190_g8 = Input_UV317_g8;
				float2 UV1190_g8 = float2( 0,0 );
				float2 UV2190_g8 = float2( 0,0 );
				float2 UV3190_g8 = float2( 0,0 );
				float W1190_g8 = 0.0;
				float W2190_g8 = 0.0;
				float W3190_g8 = 0.0;
				StochasticTiling( UV190_g8 , UV1190_g8 , UV2190_g8 , UV3190_g8 , W1190_g8 , W2190_g8 , W3190_g8 );
				float Input_Index330_g8 = (float)temp_output_4_0_g7;
				float2 temp_output_358_0_g8 = temp_output_12_0_g7;
				float2 temp_output_359_0_g8 = temp_output_13_0_g7;
				float4 Output_2DArray152_g8 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W1190_g8 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W2190_g8 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W3190_g8 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g7 = Output_2DArray152_g8;
				#else
				float4 staticSwitch7_g7 = tex2DArrayNode3_g7;
				#endif
				float4 ifLocalVar17_g7 = 0;
				UNITY_BRANCH 
				if( break899.z > 0.0 )
				ifLocalVar17_g7 = staticSwitch7_g7;
				else if( break899.z == 0.0 )
				ifLocalVar17_g7 = tex2DArrayNode3_g7;
				float4 break114 = ifLocalVar17_g7;
				float HeightMap2120 = break114.b;
				float temp_output_848_0 = ( HeightMap2120 * break834.z );
				#if defined( _QUALITY_FAST )
				float staticSwitch161 = 0.0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch161 = temp_output_848_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch161 = temp_output_848_0;
				#else
				float staticSwitch161 = 0.0;
				#endif
				float2 temp_output_5_0_g1 = UV399.xy;
				int temp_output_4_0_g1 = (int)break102.w;
				float2 temp_output_9_0_g1 = Mip101;
				float2 temp_output_12_0_g1 = ddx( temp_output_9_0_g1 );
				float2 temp_output_13_0_g1 = ddy( temp_output_9_0_g1 );
				float4 tex2DArrayNode3_g1 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g1,(float)temp_output_4_0_g1, temp_output_12_0_g1, temp_output_13_0_g1 );
				float localStochasticTiling190_g6 = ( 0.0 );
				float2 Input_UV317_g6 = temp_output_5_0_g1;
				float2 UV190_g6 = Input_UV317_g6;
				float2 UV1190_g6 = float2( 0,0 );
				float2 UV2190_g6 = float2( 0,0 );
				float2 UV3190_g6 = float2( 0,0 );
				float W1190_g6 = 0.0;
				float W2190_g6 = 0.0;
				float W3190_g6 = 0.0;
				StochasticTiling( UV190_g6 , UV1190_g6 , UV2190_g6 , UV3190_g6 , W1190_g6 , W2190_g6 , W3190_g6 );
				float Input_Index330_g6 = (float)temp_output_4_0_g1;
				float2 temp_output_358_0_g6 = temp_output_12_0_g1;
				float2 temp_output_359_0_g6 = temp_output_13_0_g1;
				float4 Output_2DArray152_g6 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W1190_g6 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W2190_g6 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W3190_g6 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1 = Output_2DArray152_g6;
				#else
				float4 staticSwitch7_g1 = tex2DArrayNode3_g1;
				#endif
				float4 ifLocalVar17_g1 = 0;
				UNITY_BRANCH 
				if( break899.w > 0.0 )
				ifLocalVar17_g1 = staticSwitch7_g1;
				else if( break899.w == 0.0 )
				ifLocalVar17_g1 = tex2DArrayNode3_g1;
				float4 break113 = ifLocalVar17_g1;
				float HeightMap3117 = break113.b;
				#if defined( _QUALITY_FAST )
				float staticSwitch160 = 0.0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch160 = 0.0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch160 = ( HeightMap3117 * break834.w );
				#else
				float staticSwitch160 = 0.0;
				#endif
				float4 appendResult164 = (float4(staticSwitch158 , staticSwitch159 , staticSwitch161 , staticSwitch160));
				float4 HeightRawCombined0199 = saturate( pow( appendResult164 , 0.5 ) );
				float4 break13_g1066 = HeightRawCombined0199;
				float4 break15_g1066 = temp_output_14_0_g1066;
				float temp_output_53_0_g1066 = ( break13_g1066.x + break15_g1066.x );
				float temp_output_54_0_g1066 = ( break13_g1066.y + break15_g1066.y );
				float temp_output_55_0_g1066 = ( break13_g1066.z + break15_g1066.z );
				float temp_output_56_0_g1066 = ( break13_g1066.w + break15_g1066.w );
				float HeightBlending854 = _HeightBlendStrength;
				float temp_output_79_0_g1066 = ( max( max( max( temp_output_53_0_g1066 , temp_output_54_0_g1066 ) , temp_output_55_0_g1066 ) , temp_output_56_0_g1066 ) - HeightBlending854 );
				float temp_output_63_0_g1066 = max( ( temp_output_53_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_67_0_g1066 = max( ( temp_output_54_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_71_0_g1066 = max( ( temp_output_55_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_73_0_g1066 = max( ( temp_output_56_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float Blending197 = _HeightBlending;
				float4 lerpResult78_g1066 = lerp( weightedBlend30_g1066 , ( ( ( temp_output_18_0_g1066 * temp_output_63_0_g1066 ) + ( temp_output_22_0_g1066 * temp_output_67_0_g1066 ) + ( temp_output_23_0_g1066 * temp_output_71_0_g1066 ) + ( temp_output_24_0_g1066 * temp_output_73_0_g1066 ) ) / ( temp_output_63_0_g1066 + temp_output_67_0_g1066 + temp_output_71_0_g1066 + temp_output_73_0_g1066 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1066 = lerpResult78_g1066;
				#else
				float4 staticSwitch77_g1066 = weightedBlend30_g1066;
				#endif
				float4 Albedo0520 = staticSwitch77_g1066;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float4 appendResult179 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise195 = SimpleNoise( appendResult179.xy*_PuddleCoverageNoise );
				simpleNoise195 = simpleNoise195*2 - 1;
				float Snow_Amount174 = _EnviroSnow;
				float Wetness228 = _EnviroWetness;
				#ifdef _PUDDLES_ON
				float staticSwitch258 = saturate( ( ( pow( ( normalWS.y - 0.99 ) , 0.4 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise195 ) ) * saturate( ( 2.0 - Snow_Amount174 ) ) ) * Wetness228 ) ) * 8.0 ) );
				#else
				float staticSwitch258 = 0.0;
				#endif
				float Puddle_Mask264 = staticSwitch258;
				float4 lerpResult524 = lerp( float4( 1,1,1,0 ) , _PuddleColor , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float4 staticSwitch543 = ( Albedo0520 * lerpResult524 );
				#else
				float4 staticSwitch543 = Albedo0520;
				#endif
				float2 temp_cast_63 = (_SnowTiling).xx;
				float2 texCoord232 = packedInput.ase_texcoord5.xy * temp_cast_63 + float2( 0,0 );
				float2 temp_output_5_0_g1067 = texCoord232;
				float localStochasticTiling2_g1068 = ( 0.0 );
				float2 Input_UV145_g1068 = temp_output_5_0_g1067;
				float2 UV2_g1068 = Input_UV145_g1068;
				float2 UV12_g1068 = float2( 0,0 );
				float2 UV22_g1068 = float2( 0,0 );
				float2 UV32_g1068 = float2( 0,0 );
				float W12_g1068 = 0.0;
				float W22_g1068 = 0.0;
				float W32_g1068 = 0.0;
				StochasticTiling( UV2_g1068 , UV12_g1068 , UV22_g1068 , UV32_g1068 , W12_g1068 , W22_g1068 , W32_g1068 );
				float2 temp_output_10_0_g1068 = ddx( Input_UV145_g1068 );
				float2 temp_output_12_0_g1068 = ddy( Input_UV145_g1068 );
				float4 Output_2D293_g1068 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV12_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W12_g1068 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV22_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W22_g1068 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV32_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W32_g1068 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1067 = Output_2D293_g1068;
				#else
				float4 staticSwitch7_g1067 = SAMPLE_TEXTURE2D( _SnowAlbedo, sampler_SnowAlbedo, temp_output_5_0_g1067 );
				#endif
				float4 Snow_Albedo522 = staticSwitch7_g1067;
				float4 temp_output_14_0_g1053 = SplatWeights198;
				float4 break898 = samplingType895;
				float2 temp_output_5_0_g1049 = UV0100.xy;
				float4 break391 = SplatIndex44;
				int temp_output_4_0_g1049 = (int)break391.x;
				float2 temp_output_9_0_g1049 = Mip101;
				float2 temp_output_12_0_g1049 = ddx( temp_output_9_0_g1049 );
				float2 temp_output_13_0_g1049 = ddy( temp_output_9_0_g1049 );
				float4 tex2DArrayNode3_g1049 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1049,(float)temp_output_4_0_g1049, temp_output_12_0_g1049, temp_output_13_0_g1049 );
				float localStochasticTiling190_g1050 = ( 0.0 );
				float2 Input_UV317_g1050 = temp_output_5_0_g1049;
				float2 UV190_g1050 = Input_UV317_g1050;
				float2 UV1190_g1050 = float2( 0,0 );
				float2 UV2190_g1050 = float2( 0,0 );
				float2 UV3190_g1050 = float2( 0,0 );
				float W1190_g1050 = 0.0;
				float W2190_g1050 = 0.0;
				float W3190_g1050 = 0.0;
				StochasticTiling( UV190_g1050 , UV1190_g1050 , UV2190_g1050 , UV3190_g1050 , W1190_g1050 , W2190_g1050 , W3190_g1050 );
				float Input_Index330_g1050 = (float)temp_output_4_0_g1049;
				float2 temp_output_358_0_g1050 = temp_output_12_0_g1049;
				float2 temp_output_359_0_g1050 = temp_output_13_0_g1049;
				float4 Output_2DArray152_g1050 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W1190_g1050 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W2190_g1050 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W3190_g1050 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1049 = Output_2DArray152_g1050;
				#else
				float4 staticSwitch7_g1049 = tex2DArrayNode3_g1049;
				#endif
				float4 ifLocalVar17_g1049 = 0;
				UNITY_BRANCH 
				if( break898.x > 0.0 )
				ifLocalVar17_g1049 = staticSwitch7_g1049;
				else if( break898.x == 0.0 )
				ifLocalVar17_g1049 = tex2DArrayNode3_g1049;
				float localGetLayerSettings368 = ( 0.0 );
				float4 in0368 = _NormalScale00;
				float4 in1368 = _NormalScale01;
				float4 in2368 = _NormalScale02;
				float4 index368 = SplatIndex44;
				float4 Out0368 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0368,in1368,in2368,index368,Out0368);
				}
				float4 NormalScales375 = Out0368;
				float4 break401 = NormalScales375;
				float3 unpack417 = UnpackNormalScale( ifLocalVar17_g1049, break401.x );
				unpack417.z = lerp( 1, unpack417.z, saturate(break401.x) );
				#if defined( _QUALITY_FAST )
				float3 staticSwitch433 = unpack417;
				#elif defined( _QUALITY_BALANCE )
				float3 staticSwitch433 = unpack417;
				#elif defined( _QUALITY_QUALITY )
				float3 staticSwitch433 = unpack417;
				#else
				float3 staticSwitch433 = unpack417;
				#endif
				float4 temp_output_18_0_g1053 = float4( staticSwitch433 , 0.0 );
				float2 temp_output_5_0_g1045 = UV197.xy;
				int temp_output_4_0_g1045 = (int)break391.y;
				float2 temp_output_9_0_g1045 = Mip101;
				float2 temp_output_12_0_g1045 = ddx( temp_output_9_0_g1045 );
				float2 temp_output_13_0_g1045 = ddy( temp_output_9_0_g1045 );
				float4 tex2DArrayNode3_g1045 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1045,(float)temp_output_4_0_g1045, temp_output_12_0_g1045, temp_output_13_0_g1045 );
				float localStochasticTiling190_g1046 = ( 0.0 );
				float2 Input_UV317_g1046 = temp_output_5_0_g1045;
				float2 UV190_g1046 = Input_UV317_g1046;
				float2 UV1190_g1046 = float2( 0,0 );
				float2 UV2190_g1046 = float2( 0,0 );
				float2 UV3190_g1046 = float2( 0,0 );
				float W1190_g1046 = 0.0;
				float W2190_g1046 = 0.0;
				float W3190_g1046 = 0.0;
				StochasticTiling( UV190_g1046 , UV1190_g1046 , UV2190_g1046 , UV3190_g1046 , W1190_g1046 , W2190_g1046 , W3190_g1046 );
				float Input_Index330_g1046 = (float)temp_output_4_0_g1045;
				float2 temp_output_358_0_g1046 = temp_output_12_0_g1045;
				float2 temp_output_359_0_g1046 = temp_output_13_0_g1045;
				float4 Output_2DArray152_g1046 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W1190_g1046 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W2190_g1046 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W3190_g1046 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1045 = Output_2DArray152_g1046;
				#else
				float4 staticSwitch7_g1045 = tex2DArrayNode3_g1045;
				#endif
				float4 ifLocalVar17_g1045 = 0;
				UNITY_BRANCH 
				if( break898.y > 0.0 )
				ifLocalVar17_g1045 = staticSwitch7_g1045;
				else if( break898.y == 0.0 )
				ifLocalVar17_g1045 = tex2DArrayNode3_g1045;
				float3 unpack416 = UnpackNormalScale( ifLocalVar17_g1045, break401.y );
				unpack416.z = lerp( 1, unpack416.z, saturate(break401.y) );
				#if defined( _QUALITY_FAST )
				float3 staticSwitch434 = unpack416;
				#elif defined( _QUALITY_BALANCE )
				float3 staticSwitch434 = unpack416;
				#elif defined( _QUALITY_QUALITY )
				float3 staticSwitch434 = unpack416;
				#else
				float3 staticSwitch434 = unpack416;
				#endif
				float4 temp_output_22_0_g1053 = float4( staticSwitch434 , 0.0 );
				float4 _Vector3 = float4(0,0,0,0);
				float2 temp_output_5_0_g1051 = UV298.xy;
				int temp_output_4_0_g1051 = (int)break391.z;
				float2 temp_output_9_0_g1051 = Mip101;
				float2 temp_output_12_0_g1051 = ddx( temp_output_9_0_g1051 );
				float2 temp_output_13_0_g1051 = ddy( temp_output_9_0_g1051 );
				float4 tex2DArrayNode3_g1051 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1051,(float)temp_output_4_0_g1051, temp_output_12_0_g1051, temp_output_13_0_g1051 );
				float localStochasticTiling190_g1052 = ( 0.0 );
				float2 Input_UV317_g1052 = temp_output_5_0_g1051;
				float2 UV190_g1052 = Input_UV317_g1052;
				float2 UV1190_g1052 = float2( 0,0 );
				float2 UV2190_g1052 = float2( 0,0 );
				float2 UV3190_g1052 = float2( 0,0 );
				float W1190_g1052 = 0.0;
				float W2190_g1052 = 0.0;
				float W3190_g1052 = 0.0;
				StochasticTiling( UV190_g1052 , UV1190_g1052 , UV2190_g1052 , UV3190_g1052 , W1190_g1052 , W2190_g1052 , W3190_g1052 );
				float Input_Index330_g1052 = (float)temp_output_4_0_g1051;
				float2 temp_output_358_0_g1052 = temp_output_12_0_g1051;
				float2 temp_output_359_0_g1052 = temp_output_13_0_g1051;
				float4 Output_2DArray152_g1052 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W1190_g1052 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W2190_g1052 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W3190_g1052 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1051 = Output_2DArray152_g1052;
				#else
				float4 staticSwitch7_g1051 = tex2DArrayNode3_g1051;
				#endif
				float4 ifLocalVar17_g1051 = 0;
				UNITY_BRANCH 
				if( break898.z > 0.0 )
				ifLocalVar17_g1051 = staticSwitch7_g1051;
				else if( break898.z == 0.0 )
				ifLocalVar17_g1051 = tex2DArrayNode3_g1051;
				float3 unpack414 = UnpackNormalScale( ifLocalVar17_g1051, break401.z );
				unpack414.z = lerp( 1, unpack414.z, saturate(break401.z) );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch435 = _Vector3;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch435 = float4( unpack414 , 0.0 );
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch435 = float4( unpack414 , 0.0 );
				#else
				float4 staticSwitch435 = _Vector3;
				#endif
				float4 temp_output_23_0_g1053 = staticSwitch435;
				float2 temp_output_5_0_g1047 = UV399.xy;
				int temp_output_4_0_g1047 = (int)break391.w;
				float2 temp_output_9_0_g1047 = Mip101;
				float2 temp_output_12_0_g1047 = ddx( temp_output_9_0_g1047 );
				float2 temp_output_13_0_g1047 = ddy( temp_output_9_0_g1047 );
				float4 tex2DArrayNode3_g1047 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1047,(float)temp_output_4_0_g1047, temp_output_12_0_g1047, temp_output_13_0_g1047 );
				float localStochasticTiling190_g1048 = ( 0.0 );
				float2 Input_UV317_g1048 = temp_output_5_0_g1047;
				float2 UV190_g1048 = Input_UV317_g1048;
				float2 UV1190_g1048 = float2( 0,0 );
				float2 UV2190_g1048 = float2( 0,0 );
				float2 UV3190_g1048 = float2( 0,0 );
				float W1190_g1048 = 0.0;
				float W2190_g1048 = 0.0;
				float W3190_g1048 = 0.0;
				StochasticTiling( UV190_g1048 , UV1190_g1048 , UV2190_g1048 , UV3190_g1048 , W1190_g1048 , W2190_g1048 , W3190_g1048 );
				float Input_Index330_g1048 = (float)temp_output_4_0_g1047;
				float2 temp_output_358_0_g1048 = temp_output_12_0_g1047;
				float2 temp_output_359_0_g1048 = temp_output_13_0_g1047;
				float4 Output_2DArray152_g1048 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W1190_g1048 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W2190_g1048 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W3190_g1048 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1047 = Output_2DArray152_g1048;
				#else
				float4 staticSwitch7_g1047 = tex2DArrayNode3_g1047;
				#endif
				float4 ifLocalVar17_g1047 = 0;
				UNITY_BRANCH 
				if( break898.w > 0.0 )
				ifLocalVar17_g1047 = staticSwitch7_g1047;
				else if( break898.w == 0.0 )
				ifLocalVar17_g1047 = tex2DArrayNode3_g1047;
				float3 unpack415 = UnpackNormalScale( ifLocalVar17_g1047, break401.w );
				unpack415.z = lerp( 1, unpack415.z, saturate(break401.w) );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch436 = _Vector3;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch436 = _Vector3;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch436 = float4( unpack415 , 0.0 );
				#else
				float4 staticSwitch436 = _Vector3;
				#endif
				float4 temp_output_24_0_g1053 = staticSwitch436;
				float4 weightedBlendVar30_g1053 = temp_output_14_0_g1053;
				float4 weightedBlend30_g1053 = ( weightedBlendVar30_g1053.x*temp_output_18_0_g1053 + weightedBlendVar30_g1053.y*temp_output_22_0_g1053 + weightedBlendVar30_g1053.z*temp_output_23_0_g1053 + weightedBlendVar30_g1053.w*temp_output_24_0_g1053 );
				float4 break13_g1053 = HeightRawCombined0199;
				float4 break15_g1053 = temp_output_14_0_g1053;
				float temp_output_53_0_g1053 = ( break13_g1053.x + break15_g1053.x );
				float temp_output_54_0_g1053 = ( break13_g1053.y + break15_g1053.y );
				float temp_output_55_0_g1053 = ( break13_g1053.z + break15_g1053.z );
				float temp_output_56_0_g1053 = ( break13_g1053.w + break15_g1053.w );
				float temp_output_79_0_g1053 = ( max( max( max( temp_output_53_0_g1053 , temp_output_54_0_g1053 ) , temp_output_55_0_g1053 ) , temp_output_56_0_g1053 ) - HeightBlending854 );
				float temp_output_63_0_g1053 = max( ( temp_output_53_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_67_0_g1053 = max( ( temp_output_54_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_71_0_g1053 = max( ( temp_output_55_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_73_0_g1053 = max( ( temp_output_56_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float4 lerpResult78_g1053 = lerp( weightedBlend30_g1053 , ( ( ( temp_output_18_0_g1053 * temp_output_63_0_g1053 ) + ( temp_output_22_0_g1053 * temp_output_67_0_g1053 ) + ( temp_output_23_0_g1053 * temp_output_71_0_g1053 ) + ( temp_output_24_0_g1053 * temp_output_73_0_g1053 ) ) / ( temp_output_63_0_g1053 + temp_output_67_0_g1053 + temp_output_71_0_g1053 + temp_output_73_0_g1053 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1053 = lerpResult78_g1053;
				#else
				float4 staticSwitch77_g1053 = weightedBlend30_g1053;
				#endif
				float4 Normal0450 = staticSwitch77_g1053;
				float temp_output_395_0 = ( _TimeParameters.x * 0.05 );
				float2 appendResult379 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 temp_output_397_0 = ( appendResult379 * _PuddleWaveTiling );
				float2 panner408 = ( temp_output_395_0 * float2( 1,0 ) + temp_output_397_0);
				float temp_output_406_0 = ( Puddle_Mask264 * ( _PuddleWaveIntensity * Wetness228 ) );
				float3 unpack420 = UnpackNormalScale( SAMPLE_TEXTURE2D( _WaveNormal, sampler_WaveNormal, panner408 ), temp_output_406_0 );
				unpack420.z = lerp( 1, unpack420.z, saturate(temp_output_406_0) );
				float2 panner407 = ( temp_output_395_0 * float2( 0,1 ) + temp_output_397_0);
				float3 unpack419 = UnpackNormalScale( SAMPLE_TEXTURE2D( _WaveNormal, sampler_WaveNormal, panner407 ), temp_output_406_0 );
				unpack419.z = lerp( 1, unpack419.z, saturate(temp_output_406_0) );
				float3 Puddle447 = BlendNormal( unpack420 , unpack419 );
				float4 lerpResult457 = lerp( Normal0450 , float4( Puddle447 , 0.0 ) , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float4 staticSwitch462 = lerpResult457;
				#else
				float4 staticSwitch462 = Normal0450;
				#endif
				float Rain_Intensity303 = _EnviroRainIntensity;
				float temp_output_325_0 = (1.0 + (( _RainFlowStrength * Rain_Intensity303 ) - 0.0) * (-1.0 - 1.0) / (1.0 - 0.0));
				float temp_output_306_0 = ( _TimeParameters.x * 0.05 );
				float4 transform287 = mul(GetObjectToWorldMatrix(),float4( packedInput.ase_texcoord6.xyz , 0.0 ));
				transform287.xyz = GetAbsolutePositionWS((transform287).xyz);
				float2 appendResult298 = (float2(( transform287.z * 0.7 ) , ( transform287.y * 0.2 )));
				float2 panner313 = ( temp_output_306_0 * float2( 0,1 ) + ( appendResult298 * _RainFlowTiling ));
				float2 texCoord285 = packedInput.ase_texcoord5.xy * float2( 10,10 ) + float2( 0,0 );
				float gradientNoise289 = UnityGradientNoise(texCoord285,_RainFlowDistortionScale);
				gradientNoise289 = gradientNoise289*0.5 + 0.5;
				float Distortion307 = ( gradientNoise289 * _RainFlowDistortionStrenght );
				float simpleNoise324 = SimpleNoise( ( panner313 + Distortion307 )*100.0 );
				simpleNoise324 = simpleNoise324*2 - 1;
				float smoothstepResult332 = smoothstep( temp_output_325_0 , 1.0 , simpleNoise324);
				float temp_output_335_0 = ( ( ( normalWS.y - 0.95 ) * -1.0 ) * _RainFlowIntensity );
				float3 temp_cast_99 = (0.3).xxx;
				float3 break337 = ( abs( normalWS ) - temp_cast_99 );
				float lerpResult342 = lerp( 0.0 , ( smoothstepResult332 * temp_output_335_0 ) , break337.x);
				float4 transform286 = mul(GetObjectToWorldMatrix(),float4( packedInput.ase_texcoord6.xyz , 0.0 ));
				transform286.xyz = GetAbsolutePositionWS((transform286).xyz);
				float2 appendResult299 = (float2(( transform286.x * 0.7 ) , ( transform286.y * 0.2 )));
				float2 panner312 = ( temp_output_306_0 * float2( 0,1 ) + ( appendResult299 * _RainFlowTiling ));
				float simpleNoise328 = SimpleNoise( ( panner312 + Distortion307 )*100.0 );
				simpleNoise328 = simpleNoise328*2 - 1;
				float smoothstepResult333 = smoothstep( temp_output_325_0 , 1.0 , simpleNoise328);
				float lerpResult341 = lerp( 0.0 , ( smoothstepResult333 * temp_output_335_0 ) , break337.z);
				float Rain_Distance_Fade340 = ( 1.0 - sqrt( saturate( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _RainDistanceFade ) ) ) );
				float temp_output_366_0 = saturate( ( ( lerpResult342 + lerpResult341 ) * Rain_Distance_Fade340 ) );
				float temp_output_373_0 = ddx( temp_output_366_0 );
				float temp_output_384_0 = ddy( temp_output_366_0 );
				float3 appendResult445 = (float3(temp_output_373_0 , temp_output_384_0 , sqrt( ( ( 1.0 - ( temp_output_373_0 * temp_output_373_0 ) ) - ( temp_output_384_0 * temp_output_384_0 ) ) )));
				float3 normalizeResult449 = normalize( appendResult445 );
				float3 RainFlow453 = normalizeResult449;
				float localRainRipples1_g1054 = ( 0.0 );
				float2 appendResult426 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 UV1_g1054 = ( appendResult426 * _RainDropTiling );
				float AngleOffset1_g1054 = 5.0;
				float lerpResult428 = lerp( 64.0 , 12.0 , Puddle_Mask264);
				float CellDensity1_g1054 = round( lerpResult428 );
				float Time1_g1054 = ( _TimeParameters.x * _RainDropSpeed );
				float temp_output_358_0 = ( _RainDropIntensity * 1.5 );
				float lerpResult365 = lerp( _RainDropIntensity , temp_output_358_0 , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float staticSwitch372 = lerpResult365;
				#else
				float staticSwitch372 = temp_output_358_0;
				#endif
				float switchResult422 = (((isFrontFace>0)?(( ( ( normalWS.y - 0.7 ) * ( staticSwitch372 * Rain_Intensity303 ) ) * Rain_Distance_Fade340 )):(0.0)));
				float Strength1_g1054 = max( 0.0 , switchResult422 );
				float3 normal1_g1054 = float3( 0,0,0 );
				float Out1_g1054 = 0.0;
				float lerpResult440 = lerp( 5.0 , 8.0 , Puddle_Mask264);
				float pow1_g1054 = lerpResult440;
				float lerpResult439 = lerp( 1.0 , 0.0 , Puddle_Mask264);
				float sin1_g1054 = lerpResult439;
				{
				Rain(UV1_g1054,AngleOffset1_g1054,CellDensity1_g1054,Time1_g1054,Strength1_g1054,pow1_g1054,sin1_g1054,Out1_g1054,normal1_g1054);
				}
				float3 Rain_Drop452 = normal1_g1054;
				#ifdef _RAIN_ON
				float4 staticSwitch468 = float4( BlendNormal( staticSwitch462.xyz , BlendNormal( RainFlow453 , Rain_Drop452 ) ) , 0.0 );
				#else
				float4 staticSwitch468 = staticSwitch462;
				#endif
				float2 temp_output_5_0_g1055 = texCoord232;
				float localStochasticTiling2_g1056 = ( 0.0 );
				float2 Input_UV145_g1056 = temp_output_5_0_g1055;
				float2 UV2_g1056 = Input_UV145_g1056;
				float2 UV12_g1056 = float2( 0,0 );
				float2 UV22_g1056 = float2( 0,0 );
				float2 UV32_g1056 = float2( 0,0 );
				float W12_g1056 = 0.0;
				float W22_g1056 = 0.0;
				float W32_g1056 = 0.0;
				StochasticTiling( UV2_g1056 , UV12_g1056 , UV22_g1056 , UV32_g1056 , W12_g1056 , W22_g1056 , W32_g1056 );
				float2 temp_output_10_0_g1056 = ddx( Input_UV145_g1056 );
				float2 temp_output_12_0_g1056 = ddy( Input_UV145_g1056 );
				float4 Output_2D293_g1056 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV12_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W12_g1056 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV22_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W22_g1056 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV32_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W32_g1056 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1055 = Output_2D293_g1056;
				#else
				float4 staticSwitch7_g1055 = SAMPLE_TEXTURE2D( _SnowNormal, sampler_SnowNormal, temp_output_5_0_g1055 );
				#endif
				float3 unpack463 = UnpackNormalScale( staticSwitch7_g1055, _SnowNormalScale );
				unpack463.z = lerp( 1, unpack463.z, saturate(_SnowNormalScale) );
				float3 Snow_Normal465 = unpack463;
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( normalWS );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( packedInput.ase_texcoord6.xyz.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( packedInput.ase_texcoord6.xyz.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float4 lerpResult470 = lerp( staticSwitch468 , float4( Snow_Normal465 , 0.0 ) , Snow_Blending247);
				#ifdef _SNOW_ON
				float4 staticSwitch471 = lerpResult470;
				#else
				float4 staticSwitch471 = staticSwitch468;
				#endif
				float4 Normal_Final472 = staticSwitch471;
				float3 ase_worldBitangent = packedInput.ase_texcoord7.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(tangentWS.xyz.x,ase_worldBitangent.x,normalWS.x,tangentWS.xyz.y,ase_worldBitangent.y,normalWS.y,tangentWS.xyz.z,ase_worldBitangent.z,normalWS.z);
				float3 tangentToWorldDir474 = mul( ase_tangentToWorldFast, Normal_Final472.xyz );
				float dotResult497 = dot( V , -( -_DirectionalLightDatas[0].forward + ( tangentToWorldDir474 * _SSSDistortion ) ) );
				float dotResult504 = dot( dotResult497 , _SSSScale );
				float SSS523 = ( saturate( dotResult504 ) * _SSSIntensity );
				float4 lerpResult553 = lerp( staticSwitch543 , ( Snow_Albedo522 + SSS523 ) , Snow_Blending247);
				#ifdef _SNOW_ON
				float4 staticSwitch562 = lerpResult553;
				#else
				float4 staticSwitch562 = staticSwitch543;
				#endif
				float4 Albedo_Final575 = ( staticSwitch562 + ( Wetness228 * -0.02 ) );
				float4 localClipHoles583 = ( Albedo_Final575 );
				float2 uv_TerrainHolesTexture = packedInput.ase_texcoord5.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				float holeClipValue579 = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float Hole583 = holeClipValue579;
				{
				clip(Hole583 == 0.0f ? -1 : 1);
				}
				float4 AlbedoCombined586 = localClipHoles583;
				
				float4 break668 = Normal_Final472;
				float3 appendResult671 = (float3(break668.x , break668.y , ( break668.z + 0.001 )));
				#ifdef _TERRAIN_INSTANCED_PERPIXEL_NORMAL
				float3 staticSwitch665 = appendResult671;
				#else
				float3 staticSwitch665 = appendResult671;
				#endif
				
				float4 temp_output_14_0_g1042 = SplatWeights198;
				float localGetLayerSettings163 = ( 0.0 );
				float4 in0163 = _Metallic00;
				float4 in1163 = _Metallic01;
				float4 in2163 = _Metallic02;
				float4 index163 = SplatIndex44;
				float4 Out0163 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0163,in1163,in2163,index163,Out0163);
				}
				float4 Metallic167 = Out0163;
				float4 break177 = Metallic167;
				float localGetLayerSettings728 = ( 0.0 );
				float4 in0728 = _Occlusion0;
				float4 in1728 = _Occlusion1;
				float4 in2728 = _Occlusion2;
				float4 index728 = SplatIndex44;
				float4 Out0728 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0728,in1728,in2728,index728,Out0728);
				}
				float4 Occlusion729 = Out0728;
				float4 break762 = Occlusion729;
				float localGetLayerSettings977 = ( 0.0 );
				float4 in0977 = _DisplacementMod0;
				float4 in1977 = _DisplacementMod1;
				float4 in2977 = _DisplacementMod2;
				float4 index977 = SplatIndex44;
				float4 Out0977 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0977,in1977,in2977,index977,Out0977);
				}
				float4 displacementModifier978 = Out0977;
				float4 break982 = displacementModifier978;
				float localGetLayerSettings162 = ( 0.0 );
				float4 in0162 = _Smoothness00;
				float4 in1162 = _Smoothness01;
				float4 in2162 = _Smoothness02;
				float4 index162 = SplatIndex44;
				float4 Out0162 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0162,in1162,in2162,index162,Out0162);
				}
				float4 Smoothness166 = Out0162;
				float4 break178 = Smoothness166;
				float4 appendResult205 = (float4(( break116.r + break177.x ) , ( break116.g + break762.x ) , ( HeightMap0119 * break982.x ) , ( break116.a * break178.x )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch221 = appendResult205;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch221 = appendResult205;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch221 = appendResult205;
				#else
				float4 staticSwitch221 = appendResult205;
				#endif
				float4 temp_output_18_0_g1042 = staticSwitch221;
				float4 appendResult206 = (float4(( break177.y + break115.r ) , ( break115.g + break762.y ) , ( HeightMap1118 * break982.y ) , ( break115.a * break178.y )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch222 = appendResult206;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch222 = appendResult206;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch222 = appendResult206;
				#else
				float4 staticSwitch222 = appendResult206;
				#endif
				float4 temp_output_22_0_g1042 = staticSwitch222;
				float4 _Vector4 = float4(0,0,0,0);
				float4 appendResult207 = (float4(( break177.z + break114.r ) , ( break114.g + break762.z ) , ( HeightMap2120 * break982.z ) , ( break114.a * break178.z )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch223 = _Vector4;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch223 = appendResult207;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch223 = appendResult207;
				#else
				float4 staticSwitch223 = _Vector4;
				#endif
				float4 temp_output_23_0_g1042 = staticSwitch223;
				float4 appendResult208 = (float4(( break177.w + break113.r ) , ( break113.g + break762.w ) , ( HeightMap3117 * break982.w ) , ( break113.a * break178.w )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch224 = _Vector4;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch224 = _Vector4;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch224 = appendResult208;
				#else
				float4 staticSwitch224 = _Vector4;
				#endif
				float4 temp_output_24_0_g1042 = staticSwitch224;
				float4 weightedBlendVar30_g1042 = temp_output_14_0_g1042;
				float4 weightedBlend30_g1042 = ( weightedBlendVar30_g1042.x*temp_output_18_0_g1042 + weightedBlendVar30_g1042.y*temp_output_22_0_g1042 + weightedBlendVar30_g1042.z*temp_output_23_0_g1042 + weightedBlendVar30_g1042.w*temp_output_24_0_g1042 );
				float4 break13_g1042 = HeightRawCombined0199;
				float4 break15_g1042 = temp_output_14_0_g1042;
				float temp_output_53_0_g1042 = ( break13_g1042.x + break15_g1042.x );
				float temp_output_54_0_g1042 = ( break13_g1042.y + break15_g1042.y );
				float temp_output_55_0_g1042 = ( break13_g1042.z + break15_g1042.z );
				float temp_output_56_0_g1042 = ( break13_g1042.w + break15_g1042.w );
				float temp_output_79_0_g1042 = ( max( max( max( temp_output_53_0_g1042 , temp_output_54_0_g1042 ) , temp_output_55_0_g1042 ) , temp_output_56_0_g1042 ) - HeightBlending854 );
				float temp_output_63_0_g1042 = max( ( temp_output_53_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_67_0_g1042 = max( ( temp_output_54_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_71_0_g1042 = max( ( temp_output_55_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_73_0_g1042 = max( ( temp_output_56_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float4 lerpResult78_g1042 = lerp( weightedBlend30_g1042 , ( ( ( temp_output_18_0_g1042 * temp_output_63_0_g1042 ) + ( temp_output_22_0_g1042 * temp_output_67_0_g1042 ) + ( temp_output_23_0_g1042 * temp_output_71_0_g1042 ) + ( temp_output_24_0_g1042 * temp_output_73_0_g1042 ) ) / ( temp_output_63_0_g1042 + temp_output_67_0_g1042 + temp_output_71_0_g1042 + temp_output_73_0_g1042 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1042 = lerpResult78_g1042;
				#else
				float4 staticSwitch77_g1042 = weightedBlend30_g1042;
				#endif
				float4 Mask0240 = staticSwitch77_g1042;
				float4 break245 = Mask0240;
				float Metallic0569 = break245.x;
				float2 temp_output_5_0_g1043 = texCoord232;
				float localStochasticTiling2_g1044 = ( 0.0 );
				float2 Input_UV145_g1044 = temp_output_5_0_g1043;
				float2 UV2_g1044 = Input_UV145_g1044;
				float2 UV12_g1044 = float2( 0,0 );
				float2 UV22_g1044 = float2( 0,0 );
				float2 UV32_g1044 = float2( 0,0 );
				float W12_g1044 = 0.0;
				float W22_g1044 = 0.0;
				float W32_g1044 = 0.0;
				StochasticTiling( UV2_g1044 , UV12_g1044 , UV22_g1044 , UV32_g1044 , W12_g1044 , W22_g1044 , W32_g1044 );
				float2 temp_output_10_0_g1044 = ddx( Input_UV145_g1044 );
				float2 temp_output_12_0_g1044 = ddy( Input_UV145_g1044 );
				float4 Output_2D293_g1044 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV12_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W12_g1044 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV22_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W22_g1044 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV32_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W32_g1044 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1043 = Output_2D293_g1044;
				#else
				float4 staticSwitch7_g1043 = SAMPLE_TEXTURE2D( _SnowMask, sampler_SnowMask, temp_output_5_0_g1043 );
				#endif
				float4 break244 = staticSwitch7_g1043;
				float Snow_Metallic563 = ( break244.r + _SnowMetallic );
				float lerpResult577 = lerp( Metallic0569 , Snow_Metallic563 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch581 = lerpResult577;
				#else
				float staticSwitch581 = Metallic0569;
				#endif
				float Metallic_Final584 = staticSwitch581;
				
				float Smoothness0540 = break245.w;
				float Snow_Smoothness536 = ( break244.a * _SnowSmoothness );
				float lerpResult559 = lerp( Smoothness0540 , Snow_Smoothness536 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch564 = lerpResult559;
				#else
				float staticSwitch564 = Smoothness0540;
				#endif
				#ifdef _RAIN_ON
				float staticSwitch544 = ( Out1_g1054 * 0.2 );
				#else
				float staticSwitch544 = 0.0;
				#endif
				float RainDropSmoothness555 = staticSwitch544;
				#ifdef _RAIN_ON
				float staticSwitch545 = ( temp_output_366_0 * _RainFlowSmoothnessBoost );
				#else
				float staticSwitch545 = 0.0;
				#endif
				float RainFlowSmoothness557 = staticSwitch545;
				float Smoothness_Final585 = saturate( ( ( staticSwitch564 + ( ( ( _WetnessBoost * Wetness228 ) + saturate( ( Puddle_Mask264 - 0.2 ) ) ) * ( 1.0 - Snow_Blending247 ) ) ) + ( RainDropSmoothness555 + RainFlowSmoothness557 ) ) );
				
				float Occlusion0589 = break245.y;
				float Snow_Occlusion588 = break244.g;
				float lerpResult593 = lerp( Occlusion0589 , Snow_Occlusion588 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch594 = lerpResult593;
				#else
				float staticSwitch594 = Occlusion0589;
				#endif
				float Occlusion_Final595 = staticSwitch594;
				
				float Alpha1008 = holeClipValue579;
				
				surfaceDescription.BaseColor = AlbedoCombined586.xyz;
				surfaceDescription.Normal = staticSwitch665;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Metallic_Final584;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = Smoothness_Final585;
				surfaceDescription.Occlusion = Occlusion_Final595;
				surfaceDescription.Alpha = Alpha1008;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				surfaceDescription.AlphaClipThresholdDepthPrepass = 0.5;
				surfaceDescription.AlphaClipThresholdDepthPostpass = 0.5;

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 0;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceDescription.TransmissionMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				#ifdef UNITY_VIRTUAL_TEXTURING
				surfaceDescription.VTPackedFeedback = float4(1.0f,1.0f,1.0f,1.0f);
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );
				ENCODE_INTO_GBUFFER( surfaceData, builtinData, posInput.positionSS, outGBuffer );
				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#pragma shader_feature_local_fragment _ _DISABLE_DECALS
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma shader_feature_local _ _DOUBLESIDED_ON
			#pragma shader_feature_local _ _ALPHATEST_ON
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 140011
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma shader_feature _ EDITOR_VISUALIZATION
			#pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

            #define SHADERPASS SHADERPASS_LIGHT_TRANSPORT
            #define SCENEPICKINGPASS 1

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

            //#if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            //#define FRAG_INPUTS_ENABLE_STRIPPING
            //#endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
                #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
                #define RAYTRACING_SHADER_GRAPH_LOW
            #endif

            #ifndef SHADER_UNLIT
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			    #define ASE_NEED_CULLFACE 1
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

            #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
            #endif

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif

            #ifndef DEBUG_DISPLAY
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif

            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ColorTint3;
			float4 _ColorTint2;
			float4 _ColorTint4;
			float4 _ColorTint5;
			float4 _ColorTint6;
			float4 _ColorTint7;
			float4 _ColorTint8;
			float4 _ColorTint9;
			float4 _ColorTint10;
			float4 _ColorTint11;
			float4 _HeightContrast0;
			float4 _HeightContrast1;
			float4 _HeightContrast2;
			float4 _DisplacementMod0;
			float4 _Occlusion2;
			float4 _PuddleColor;
			float4 _Occlusion1;
			float4 _Occlusion0;
			float4 _Metallic02;
			float4 _Metallic01;
			float4 _NormalScale00;
			float4 _NormalScale01;
			float4 _NormalScale02;
			float4 _Metallic00;
			float4 _ColorTint1;
			float4 _TerrainHolesTexture_ST;
			float4 _ColorTint0;
			float4 _LayerScaleOffset11;
			float4 _Smoothness02;
			float4 _Smoothness01;
			float4 _Smoothness00;
			float4 _DisplacementMod2;
			float4 _Control_ST;
			float4 _Control1_ST;
			float4 _Control2_ST;
			float4 _SamplingType0;
			float4 _SamplingType1;
			float4 _DisplacementMod1;
			float4 _LayerScaleOffset0;
			float4 _SamplingType2;
			float4 _LayerScaleOffset2;
			float4 _LayerScaleOffset3;
			float4 _LayerScaleOffset4;
			float4 _LayerScaleOffset5;
			float4 _LayerScaleOffset6;
			float4 _LayerScaleOffset7;
			float4 _LayerScaleOffset8;
			float4 _LayerScaleOffset9;
			float4 _LayerScaleOffset10;
			float4 _LayerScaleOffset1;
			float _SSSDistortion;
			float _SnowNormalScale;
			float _RainDropIntensity;
			float _SSSScale;
			float _TessellationMaxDistance;
			float _RainDropSpeed;
			float _SnowMetallic;
			float _SnowSmoothness;
			float _SSSIntensity;
			float _RainDropTiling;
			float _HeightBlendStrength;
			float _RainFlowIntensity;
			float _TessellationMinDistance;
			float _TessellationFactor;
			float _SnowDisplacement;
			float _EnviroSnow;
			float _SnowSlopePower;
			float _SnowHeightBlending;
			float _MipDistanceBlending;
			float _WetnessBoost;
			float _HeightBlending;
			float _RainDistanceFade;
			float _PuddleIntensity;
			float _EnviroWetness;
			float _SnowTiling;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _RainFlowStrength;
			float _EnviroRainIntensity;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _PuddleCoverageNoise;
			float _RainFlowSmoothnessBoost;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			    float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			    float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			    float _TessPhongStrength;
			    float _TessValue;
			    float _TessMin;
			    float _TessMax;
			    float _TessEdgeLength;
			    float _TessMaxDisp;
			#endif
			CBUFFER_END

            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Control1);
			SAMPLER(sampler_Control1);
			TEXTURE2D(_Control2);
			SAMPLER(sampler_Control2);
			TEXTURE2D_ARRAY(_AlbedoArray);
			SAMPLER(sampler_AlbedoArray);
			TEXTURE2D_ARRAY(_MaskArray);
			SAMPLER(sampler_MaskArray);
			TEXTURE2D(_SnowAlbedo);
			SAMPLER(sampler_SnowAlbedo);
			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			TEXTURE2D_ARRAY(_NormalArray);
			SAMPLER(sampler_NormalArray);
			TEXTURE2D(_WaveNormal);
			SAMPLER(sampler_WaveNormal);
			TEXTURE2D(_SnowNormal);
			SAMPLER(sampler_SnowNormal);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			TEXTURE2D(_SnowMask);
			SAMPLER(sampler_SnowMask);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#if SHADERPASS == SHADERPASS_LIGHT_TRANSPORT
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/MetaPass.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

        	#ifdef HAVE_VFX_MODIFICATION
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_VERT_TANGENT
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _HEIGHTBLEND_ON
			#pragma shader_feature_local _SPLATCOUNT__4 _SPLATCOUNT__8 _SPLATCOUNT__12
			#pragma multi_compile_local _QUALITY_FAST _QUALITY_BALANCE _QUALITY_QUALITY
			#pragma shader_feature_local _STOCHASTIC_ON
			#pragma shader_feature_local _RAIN_ON
			#pragma shader_feature_local _TERRAIN_INSTANCED_PERPIXEL_NORMAL
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap
			#include "EnviroInclude.hlsl"


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_Position;
				#ifdef EDITOR_VISUALIZATION
				float2 VizUV : TEXCOORD0;
				float4 LightCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			void GetSplats( float4 in0, float4 in1, float4 in2, out float4 Out1, out float4 Out0 )
			{
				GetSplatsWeights(in0,in1,in2,Out0,Out1);
			}
			
			void GetUVS( float4 in0, float4 in1, float4 in2, float4 in3, float4 in4, float4 in5, float4 in6, float4 in7, float4 in8, float4 in9, float4 in10, float4 in11, float4 index, out float4 Out0, out float4 Out1, out float4 Out2, out float4 Out3 )
			{
				GetLayerUV(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,index,Out0,Out1,Out2,Out3);
			}
			
			void GetLayerSettings( float4 in0, float4 in1, float4 in2, float4 index, out float4 Out0 )
			{
				GetLayerValue(in0,in1,in2,index,Out0);
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			void StochasticTiling( float2 UV, out float2 UV1, out float2 UV2, out float2 UV3, out float W1, out float W2, out float W3 )
			{
				float2 vertex1, vertex2, vertex3;
				// Scaling of the input
				float2 uv = UV * 3.464; // 2 * sqrt (3)
				// Skew input space into simplex triangle grid
				const float2x2 gridToSkewedGrid = float2x2( 1.0, 0.0, -0.57735027, 1.15470054 );
				float2 skewedCoord = mul( gridToSkewedGrid, uv );
				// Compute local triangle vertex IDs and local barycentric coordinates
				int2 baseId = int2( floor( skewedCoord ) );
				float3 temp = float3( frac( skewedCoord ), 0 );
				temp.z = 1.0 - temp.x - temp.y;
				if ( temp.z > 0.0 )
				{
					W1 = temp.z;
					W2 = temp.y;
					W3 = temp.x;
					vertex1 = baseId;
					vertex2 = baseId + int2( 0, 1 );
					vertex3 = baseId + int2( 1, 0 );
				}
				else
				{
					W1 = -temp.z;
					W2 = 1.0 - temp.y;
					W3 = 1.0 - temp.x;
					vertex1 = baseId + int2( 1, 1 );
					vertex2 = baseId + int2( 1, 0 );
					vertex3 = baseId + int2( 0, 1 );
				}
				UV1 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex1 ) ) * 43758.5453 );
				UV2 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex2 ) ) * 43758.5453 );
				UV3 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex3 ) ) * 43758.5453 );
				return;
			}
			
			float2 UnityGradientNoiseDir( float2 p )
			{
				p = fmod(p , 289);
				float x = fmod((34 * p.x + 1) * p.x , 289) + p.y;
				x = fmod( (34 * x + 1) * x , 289);
				x = frac( x / 41 ) * 2 - 1;
				return normalize( float2(x - floor(x + 0.5 ), abs( x ) - 0.5 ) );
			}
			
			float UnityGradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 ip = floor( p );
				float2 fp = frac( p );
				float d00 = dot( UnityGradientNoiseDir( ip ), fp );
				float d01 = dot( UnityGradientNoiseDir( ip + float2( 0, 1 ) ), fp - float2( 0, 1 ) );
				float d10 = dot( UnityGradientNoiseDir( ip + float2( 1, 0 ) ), fp - float2( 1, 0 ) );
				float d11 = dot( UnityGradientNoiseDir( ip + float2( 1, 1 ) ), fp - float2( 1, 1 ) );
				fp = fp * fp * fp * ( fp * ( fp * 6 - 15 ) + 10 );
				return lerp( lerp( d00, d01, fp.y ), lerp( d10, d11, fp.y ), fp.x ) + 0.5;
			}
			
			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.uv0.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				surfaceData.baseColor =					surfaceDescription.BaseColor;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness = 				surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.transmissionMask =			surfaceDescription.TransmissionMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
                #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                    if (_EnableSSRefraction)
                    {
                        surfaceData.ior =                       surfaceDescription.RefractionIndex;
                        surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                        surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                        surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                        surfaceDescription.Alpha = 1.0;
                    }
                    else
                    {
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                        surfaceDescription.Alpha = 1.0;
                    }
                #else
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                #endif

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;

                #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif

                #ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                    surfaceData.normalWS = float3(0, 1, 0);
                #endif

				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif

                #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
                #endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                    surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;

	            

	            
                #if ASE_SRP_VERSION >=140008
                #ifdef DECAL_NORMAL_BLENDING
					normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(normalTS, fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;

                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                     }
                    #endif

                    GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
                #else
					GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;
        
                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                    }
                    #endif
                #endif
                #endif
               

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz );
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
                    GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
				#endif

				#if defined(DEBUG_DISPLAY)
				    if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				    {
					   surfaceData.metallic = 0;
				    }
				    ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData); 
				#endif

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

                #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                    surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                #endif
			}

			// Get Surface And BuiltinData
			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                    LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);

				#ifdef _ALPHATEST_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
				#endif

				#ifdef _DEPTHOFFSET_ON
                    ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
				#endif

                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				#ifdef _DEPTHOFFSET_ON
                    builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

                #ifdef UNITY_VIRTUAL_TEXTURING
                    builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
                    builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
                    builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

                builtinData.emissiveColor = surfaceDescription.Emission;

                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				inputMesh = ApplyMeshModification(inputMesh);
				float3 appendResult261 = (float3(_SnowDisplacement , _SnowDisplacement , _SnowDisplacement));
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float Snow_Amount174 = _EnviroSnow;
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float3 Snow_Displacement272 = ( ( appendResult261 * ase_worldNormal ) * ( Snow_Blending247 * Snow_Amount174 ) );
				#ifdef _SNOW_ON
				float3 staticSwitch279 = Snow_Displacement272;
				#else
				float3 staticSwitch279 = float3(0,0,0);
				#endif
				float3 DisplacementFinal282 = ( staticSwitch279 + float3(0,0,0) );
				
				float4 appendResult660 = (float4(cross( inputMesh.normalOS , float3(0,0,1) ) , -1.0));
				
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = ase_worldNormal;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = ase_worldPos;
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				outputPackedVaryingsMeshToPS.ase_texcoord6.xyz = ase_worldTangent;
				float ase_vertexTangentSign = inputMesh.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord7.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_texcoord2.xy = inputMesh.uv0.xy;
				outputPackedVaryingsMeshToPS.ase_texcoord3 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord2.zw = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord6.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord7.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = DisplacementFinal282;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = appendResult660;

				outputPackedVaryingsMeshToPS.positionCS = UnityMetaVertexPosition(inputMesh.positionOS, inputMesh.uv1.xy, inputMesh.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);

				#ifdef EDITOR_VISUALIZATION
					float2 vizUV = 0;
					float4 lightCoord = 0;
					UnityEditorVizData(inputMesh.positionOS.xyz, inputMesh.uv0.xy, inputMesh.uv1.xy, inputMesh.uv2.xy, vizUV, lightCoord);

					outputPackedVaryingsMeshToPS.VizUV.xy = vizUV;
					outputPackedVaryingsMeshToPS.LightCoord = lightCoord;
				#endif

				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.uv3 = v.uv3;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv0 = patch[0].uv0 * bary.x + patch[1].uv0 * bary.y + patch[2].uv0 * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.uv3 = patch[0].uv3 * bary.x + patch[1].uv3 * bary.y + patch[2].uv3 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag(PackedVaryingsMeshToPS packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = float3(1.0, 1.0, 1.0);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float localGetSplats43 = ( 0.0 );
				float2 uv_Control = packedInput.ase_texcoord2.xy * _Control_ST.xy + _Control_ST.zw;
				float4 SplatControl033 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch42 = SplatControl033;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch42 = SplatControl033;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch42 = SplatControl033;
				#else
				float4 staticSwitch42 = SplatControl033;
				#endif
				float4 in043 = staticSwitch42;
				float4 _Vector1 = float4(0,0,0,0);
				float2 uv_Control1 = packedInput.ase_texcoord2.xy * _Control1_ST.xy + _Control1_ST.zw;
				float4 SplatControl135 = SAMPLE_TEXTURE2D( _Control1, sampler_Control1, uv_Control1 );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch41 = _Vector1;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch41 = SplatControl135;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch41 = SplatControl135;
				#else
				float4 staticSwitch41 = _Vector1;
				#endif
				float4 in143 = staticSwitch41;
				float2 uv_Control2 = packedInput.ase_texcoord2.xy * _Control2_ST.xy + _Control2_ST.zw;
				float4 SplatControl234 = SAMPLE_TEXTURE2D( _Control2, sampler_Control2, uv_Control2 );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch40 = _Vector1;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch40 = _Vector1;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch40 = SplatControl234;
				#else
				float4 staticSwitch40 = _Vector1;
				#endif
				float4 in243 = staticSwitch40;
				float4 Out143 = float4( 0,0,0,0 );
				float4 Out043 = float4( 0,0,0,0 );
				{
				GetSplatsWeights(in043,in143,in243,Out043,Out143);
				}
				float4 SplatWeights198 = Out143;
				float4 temp_output_14_0_g1066 = SplatWeights198;
				float localGetLayerSettings894 = ( 0.0 );
				float4 in0894 = _SamplingType0;
				float4 in1894 = _SamplingType1;
				float4 in2894 = _SamplingType2;
				float4 SplatIndex44 = Out043;
				float4 index894 = SplatIndex44;
				float4 Out0894 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0894,in1894,in2894,index894,Out0894);
				}
				float4 samplingType895 = Out0894;
				float4 break896 = samplingType895;
				float2 appendResult69 = (float2(packedInput.ase_texcoord3.xyz.x , packedInput.ase_texcoord3.xyz.z));
				float localGetUVS58 = ( 0.0 );
				float4 in058 = _LayerScaleOffset0;
				float4 in158 = _LayerScaleOffset1;
				float4 in258 = _LayerScaleOffset2;
				float4 in358 = _LayerScaleOffset3;
				float4 in458 = _LayerScaleOffset4;
				float4 in558 = _LayerScaleOffset5;
				float4 in658 = _LayerScaleOffset6;
				float4 in758 = _LayerScaleOffset7;
				float4 in858 = _LayerScaleOffset8;
				float4 in958 = _LayerScaleOffset9;
				float4 in1058 = _LayerScaleOffset10;
				float4 in1158 = _LayerScaleOffset11;
				float4 index58 = SplatIndex44;
				float4 Out058 = float4( 0,0,0,0 );
				float4 Out158 = float4( 0,0,0,0 );
				float4 Out258 = float4( 0,0,0,0 );
				float4 Out358 = float4( 0,0,0,0 );
				{
				GetLayerUV(in058,in158,in258,in358,in458,in558,in658,in758,in858,in958,in1058,in1158,index58,Out058,Out158,Out258,Out358);
				}
				float4 break63 = Out058;
				float2 appendResult65 = (float2(break63.x , break63.y));
				float2 appendResult73 = (float2(break63.z , break63.w));
				float4 break86 = SplatIndex44;
				float3 appendResult93 = (float3(( ( appendResult69 * appendResult65 ) + appendResult73 ) , break86.x));
				float3 UV0100 = appendResult93;
				float3 break485 = UV0100;
				float2 appendResult493 = (float2(break485.x , break485.y));
				float2 temp_output_5_0_g1057 = appendResult493;
				int temp_output_4_0_g1057 = (int)break485.z;
				float2 appendResult87 = (float2(packedInput.ase_texcoord3.xyz.x , packedInput.ase_texcoord3.xyz.z));
				float2 Mip101 = ( appendResult87 * ( 1.0 / max( 0.001 , _MipDistanceBlending ) ) );
				float2 temp_output_9_0_g1057 = Mip101;
				float2 temp_output_12_0_g1057 = ddx( temp_output_9_0_g1057 );
				float2 temp_output_13_0_g1057 = ddy( temp_output_9_0_g1057 );
				float4 tex2DArrayNode3_g1057 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1057,(float)temp_output_4_0_g1057, temp_output_12_0_g1057, temp_output_13_0_g1057 );
				float localStochasticTiling190_g1058 = ( 0.0 );
				float2 Input_UV317_g1058 = temp_output_5_0_g1057;
				float2 UV190_g1058 = Input_UV317_g1058;
				float2 UV1190_g1058 = float2( 0,0 );
				float2 UV2190_g1058 = float2( 0,0 );
				float2 UV3190_g1058 = float2( 0,0 );
				float W1190_g1058 = 0.0;
				float W2190_g1058 = 0.0;
				float W3190_g1058 = 0.0;
				StochasticTiling( UV190_g1058 , UV1190_g1058 , UV2190_g1058 , UV3190_g1058 , W1190_g1058 , W2190_g1058 , W3190_g1058 );
				float Input_Index330_g1058 = (float)temp_output_4_0_g1057;
				float2 temp_output_358_0_g1058 = temp_output_12_0_g1057;
				float2 temp_output_359_0_g1058 = temp_output_13_0_g1057;
				float4 Output_2DArray152_g1058 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W1190_g1058 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W2190_g1058 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W3190_g1058 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1057 = Output_2DArray152_g1058;
				#else
				float4 staticSwitch7_g1057 = tex2DArrayNode3_g1057;
				#endif
				float4 ifLocalVar17_g1057 = 0;
				UNITY_BRANCH 
				if( break896.x > 0.0 )
				ifLocalVar17_g1057 = staticSwitch7_g1057;
				else if( break896.x == 0.0 )
				ifLocalVar17_g1057 = tex2DArrayNode3_g1057;
				float localGetUVS795 = ( 0.0 );
				float4 in0795 = _ColorTint0;
				float4 in1795 = _ColorTint1;
				float4 in2795 = _ColorTint2;
				float4 in3795 = _ColorTint3;
				float4 in4795 = _ColorTint4;
				float4 in5795 = _ColorTint5;
				float4 in6795 = _ColorTint6;
				float4 in7795 = _ColorTint7;
				float4 in8795 = _ColorTint8;
				float4 in9795 = _ColorTint9;
				float4 in10795 = _ColorTint10;
				float4 in11795 = _ColorTint11;
				float4 index795 = SplatIndex44;
				float4 Out0795 = float4( 0,0,0,0 );
				float4 Out1795 = float4( 0,0,0,0 );
				float4 Out2795 = float4( 0,0,0,0 );
				float4 Out3795 = float4( 0,0,0,0 );
				{
				GetLayerUV(in0795,in1795,in2795,in3795,in4795,in5795,in6795,in7795,in8795,in9795,in10795,in11795,index795,Out0795,Out1795,Out2795,Out3795);
				}
				float4 Color0796 = Out0795;
				float4 temp_output_616_0 = ( ifLocalVar17_g1057 * Color0796 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch511 = temp_output_616_0;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch511 = temp_output_616_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch511 = temp_output_616_0;
				#else
				float4 staticSwitch511 = temp_output_616_0;
				#endif
				float4 temp_output_2_0_g1065 = staticSwitch511;
				float4 temp_output_18_0_g1066 = float4( (temp_output_2_0_g1065).rgb , 0.0 );
				float4 break62 = Out158;
				float2 appendResult66 = (float2(break62.x , break62.y));
				float2 appendResult72 = (float2(break62.z , break62.w));
				float3 appendResult90 = (float3(( ( appendResult69 * appendResult66 ) + appendResult72 ) , break86.y));
				float3 UV197 = appendResult90;
				float3 break487 = UV197;
				float2 appendResult492 = (float2(break487.x , break487.y));
				float2 temp_output_5_0_g1061 = appendResult492;
				int temp_output_4_0_g1061 = (int)break487.z;
				float2 temp_output_9_0_g1061 = Mip101;
				float2 temp_output_12_0_g1061 = ddx( temp_output_9_0_g1061 );
				float2 temp_output_13_0_g1061 = ddy( temp_output_9_0_g1061 );
				float4 tex2DArrayNode3_g1061 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1061,(float)temp_output_4_0_g1061, temp_output_12_0_g1061, temp_output_13_0_g1061 );
				float localStochasticTiling190_g1062 = ( 0.0 );
				float2 Input_UV317_g1062 = temp_output_5_0_g1061;
				float2 UV190_g1062 = Input_UV317_g1062;
				float2 UV1190_g1062 = float2( 0,0 );
				float2 UV2190_g1062 = float2( 0,0 );
				float2 UV3190_g1062 = float2( 0,0 );
				float W1190_g1062 = 0.0;
				float W2190_g1062 = 0.0;
				float W3190_g1062 = 0.0;
				StochasticTiling( UV190_g1062 , UV1190_g1062 , UV2190_g1062 , UV3190_g1062 , W1190_g1062 , W2190_g1062 , W3190_g1062 );
				float Input_Index330_g1062 = (float)temp_output_4_0_g1061;
				float2 temp_output_358_0_g1062 = temp_output_12_0_g1061;
				float2 temp_output_359_0_g1062 = temp_output_13_0_g1061;
				float4 Output_2DArray152_g1062 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W1190_g1062 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W2190_g1062 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W3190_g1062 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1061 = Output_2DArray152_g1062;
				#else
				float4 staticSwitch7_g1061 = tex2DArrayNode3_g1061;
				#endif
				float4 ifLocalVar17_g1061 = 0;
				UNITY_BRANCH 
				if( break896.y > 0.0 )
				ifLocalVar17_g1061 = staticSwitch7_g1061;
				else if( break896.y == 0.0 )
				ifLocalVar17_g1061 = tex2DArrayNode3_g1061;
				float4 Color1797 = Out1795;
				float4 temp_output_617_0 = ( ifLocalVar17_g1061 * Color1797 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch508 = temp_output_617_0;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch508 = temp_output_617_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch508 = temp_output_617_0;
				#else
				float4 staticSwitch508 = temp_output_617_0;
				#endif
				float4 temp_output_22_0_g1066 = staticSwitch508;
				float4 _Vector2 = float4(0,0,0,0);
				float4 break60 = Out258;
				float2 appendResult67 = (float2(break60.x , break60.y));
				float2 appendResult79 = (float2(break60.z , break60.w));
				float3 appendResult91 = (float3(( ( appendResult69 * appendResult67 ) + appendResult79 ) , break86.z));
				float3 UV298 = appendResult91;
				float3 break488 = UV298;
				float2 appendResult495 = (float2(break488.x , break488.y));
				float2 temp_output_5_0_g1063 = appendResult495;
				int temp_output_4_0_g1063 = (int)break488.z;
				float2 temp_output_9_0_g1063 = Mip101;
				float2 temp_output_12_0_g1063 = ddx( temp_output_9_0_g1063 );
				float2 temp_output_13_0_g1063 = ddy( temp_output_9_0_g1063 );
				float4 tex2DArrayNode3_g1063 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1063,(float)temp_output_4_0_g1063, temp_output_12_0_g1063, temp_output_13_0_g1063 );
				float localStochasticTiling190_g1064 = ( 0.0 );
				float2 Input_UV317_g1064 = temp_output_5_0_g1063;
				float2 UV190_g1064 = Input_UV317_g1064;
				float2 UV1190_g1064 = float2( 0,0 );
				float2 UV2190_g1064 = float2( 0,0 );
				float2 UV3190_g1064 = float2( 0,0 );
				float W1190_g1064 = 0.0;
				float W2190_g1064 = 0.0;
				float W3190_g1064 = 0.0;
				StochasticTiling( UV190_g1064 , UV1190_g1064 , UV2190_g1064 , UV3190_g1064 , W1190_g1064 , W2190_g1064 , W3190_g1064 );
				float Input_Index330_g1064 = (float)temp_output_4_0_g1063;
				float2 temp_output_358_0_g1064 = temp_output_12_0_g1063;
				float2 temp_output_359_0_g1064 = temp_output_13_0_g1063;
				float4 Output_2DArray152_g1064 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W1190_g1064 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W2190_g1064 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W3190_g1064 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1063 = Output_2DArray152_g1064;
				#else
				float4 staticSwitch7_g1063 = tex2DArrayNode3_g1063;
				#endif
				float4 ifLocalVar17_g1063 = 0;
				UNITY_BRANCH 
				if( break896.z > 0.0 )
				ifLocalVar17_g1063 = staticSwitch7_g1063;
				else if( break896.z == 0.0 )
				ifLocalVar17_g1063 = tex2DArrayNode3_g1063;
				float4 Color2798 = Out2795;
				float4 temp_output_618_0 = ( ifLocalVar17_g1063 * Color2798 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch509 = _Vector2;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch509 = temp_output_618_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch509 = temp_output_618_0;
				#else
				float4 staticSwitch509 = _Vector2;
				#endif
				float4 temp_output_23_0_g1066 = staticSwitch509;
				float4 break61 = Out358;
				float2 appendResult68 = (float2(break61.x , break61.y));
				float2 appendResult78 = (float2(break61.z , break61.w));
				float3 appendResult92 = (float3(( ( appendResult69 * appendResult68 ) + appendResult78 ) , break86.w));
				float3 UV399 = appendResult92;
				float3 break486 = UV399;
				float2 appendResult491 = (float2(break486.x , break486.y));
				float2 temp_output_5_0_g1059 = appendResult491;
				int temp_output_4_0_g1059 = (int)break486.z;
				float2 temp_output_9_0_g1059 = Mip101;
				float2 temp_output_12_0_g1059 = ddx( temp_output_9_0_g1059 );
				float2 temp_output_13_0_g1059 = ddy( temp_output_9_0_g1059 );
				float4 tex2DArrayNode3_g1059 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1059,(float)temp_output_4_0_g1059, temp_output_12_0_g1059, temp_output_13_0_g1059 );
				float localStochasticTiling190_g1060 = ( 0.0 );
				float2 Input_UV317_g1060 = temp_output_5_0_g1059;
				float2 UV190_g1060 = Input_UV317_g1060;
				float2 UV1190_g1060 = float2( 0,0 );
				float2 UV2190_g1060 = float2( 0,0 );
				float2 UV3190_g1060 = float2( 0,0 );
				float W1190_g1060 = 0.0;
				float W2190_g1060 = 0.0;
				float W3190_g1060 = 0.0;
				StochasticTiling( UV190_g1060 , UV1190_g1060 , UV2190_g1060 , UV3190_g1060 , W1190_g1060 , W2190_g1060 , W3190_g1060 );
				float Input_Index330_g1060 = (float)temp_output_4_0_g1059;
				float2 temp_output_358_0_g1060 = temp_output_12_0_g1059;
				float2 temp_output_359_0_g1060 = temp_output_13_0_g1059;
				float4 Output_2DArray152_g1060 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W1190_g1060 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W2190_g1060 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W3190_g1060 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1059 = Output_2DArray152_g1060;
				#else
				float4 staticSwitch7_g1059 = tex2DArrayNode3_g1059;
				#endif
				float4 ifLocalVar17_g1059 = 0;
				UNITY_BRANCH 
				if( break896.w > 0.0 )
				ifLocalVar17_g1059 = staticSwitch7_g1059;
				else if( break896.w == 0.0 )
				ifLocalVar17_g1059 = tex2DArrayNode3_g1059;
				float4 Color3799 = Out3795;
				#if defined( _QUALITY_FAST )
				float4 staticSwitch510 = _Vector2;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch510 = _Vector2;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch510 = ( ifLocalVar17_g1059 * Color3799 );
				#else
				float4 staticSwitch510 = _Vector2;
				#endif
				float4 temp_output_24_0_g1066 = staticSwitch510;
				float4 weightedBlendVar30_g1066 = temp_output_14_0_g1066;
				float4 weightedBlend30_g1066 = ( weightedBlendVar30_g1066.x*temp_output_18_0_g1066 + weightedBlendVar30_g1066.y*temp_output_22_0_g1066 + weightedBlendVar30_g1066.z*temp_output_23_0_g1066 + weightedBlendVar30_g1066.w*temp_output_24_0_g1066 );
				float4 break899 = samplingType895;
				float2 temp_output_5_0_g11 = UV0100.xy;
				float4 break102 = SplatIndex44;
				int temp_output_4_0_g11 = (int)break102.x;
				float2 temp_output_9_0_g11 = Mip101;
				float2 temp_output_12_0_g11 = ddx( temp_output_9_0_g11 );
				float2 temp_output_13_0_g11 = ddy( temp_output_9_0_g11 );
				float4 tex2DArrayNode3_g11 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g11,(float)temp_output_4_0_g11, temp_output_12_0_g11, temp_output_13_0_g11 );
				float localStochasticTiling190_g12 = ( 0.0 );
				float2 Input_UV317_g12 = temp_output_5_0_g11;
				float2 UV190_g12 = Input_UV317_g12;
				float2 UV1190_g12 = float2( 0,0 );
				float2 UV2190_g12 = float2( 0,0 );
				float2 UV3190_g12 = float2( 0,0 );
				float W1190_g12 = 0.0;
				float W2190_g12 = 0.0;
				float W3190_g12 = 0.0;
				StochasticTiling( UV190_g12 , UV1190_g12 , UV2190_g12 , UV3190_g12 , W1190_g12 , W2190_g12 , W3190_g12 );
				float Input_Index330_g12 = (float)temp_output_4_0_g11;
				float2 temp_output_358_0_g12 = temp_output_12_0_g11;
				float2 temp_output_359_0_g12 = temp_output_13_0_g11;
				float4 Output_2DArray152_g12 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W1190_g12 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W2190_g12 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W3190_g12 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g11 = Output_2DArray152_g12;
				#else
				float4 staticSwitch7_g11 = tex2DArrayNode3_g11;
				#endif
				float4 ifLocalVar17_g11 = 0;
				UNITY_BRANCH 
				if( break899.x > 0.0 )
				ifLocalVar17_g11 = staticSwitch7_g11;
				else if( break899.x == 0.0 )
				ifLocalVar17_g11 = tex2DArrayNode3_g11;
				float4 break116 = ifLocalVar17_g11;
				float HeightMap0119 = break116.b;
				float localGetLayerSettings820 = ( 0.0 );
				float4 in0820 = _HeightContrast0;
				float4 in1820 = _HeightContrast1;
				float4 in2820 = _HeightContrast2;
				float4 index820 = SplatIndex44;
				float4 Out0820 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0820,in1820,in2820,index820,Out0820);
				}
				float4 HeightContrast824 = Out0820;
				float4 break834 = HeightContrast824;
				float temp_output_846_0 = ( HeightMap0119 * break834.x );
				#if defined( _QUALITY_FAST )
				float staticSwitch158 = temp_output_846_0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch158 = temp_output_846_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch158 = temp_output_846_0;
				#else
				float staticSwitch158 = temp_output_846_0;
				#endif
				float2 temp_output_5_0_g9 = UV197.xy;
				int temp_output_4_0_g9 = (int)break102.y;
				float2 temp_output_9_0_g9 = Mip101;
				float2 temp_output_12_0_g9 = ddx( temp_output_9_0_g9 );
				float2 temp_output_13_0_g9 = ddy( temp_output_9_0_g9 );
				float4 tex2DArrayNode3_g9 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g9,(float)temp_output_4_0_g9, temp_output_12_0_g9, temp_output_13_0_g9 );
				float localStochasticTiling190_g10 = ( 0.0 );
				float2 Input_UV317_g10 = temp_output_5_0_g9;
				float2 UV190_g10 = Input_UV317_g10;
				float2 UV1190_g10 = float2( 0,0 );
				float2 UV2190_g10 = float2( 0,0 );
				float2 UV3190_g10 = float2( 0,0 );
				float W1190_g10 = 0.0;
				float W2190_g10 = 0.0;
				float W3190_g10 = 0.0;
				StochasticTiling( UV190_g10 , UV1190_g10 , UV2190_g10 , UV3190_g10 , W1190_g10 , W2190_g10 , W3190_g10 );
				float Input_Index330_g10 = (float)temp_output_4_0_g9;
				float2 temp_output_358_0_g10 = temp_output_12_0_g9;
				float2 temp_output_359_0_g10 = temp_output_13_0_g9;
				float4 Output_2DArray152_g10 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W1190_g10 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W2190_g10 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W3190_g10 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g9 = Output_2DArray152_g10;
				#else
				float4 staticSwitch7_g9 = tex2DArrayNode3_g9;
				#endif
				float4 ifLocalVar17_g9 = 0;
				UNITY_BRANCH 
				if( break899.y > 0.0 )
				ifLocalVar17_g9 = staticSwitch7_g9;
				else if( break899.y == 0.0 )
				ifLocalVar17_g9 = tex2DArrayNode3_g9;
				float4 break115 = ifLocalVar17_g9;
				float HeightMap1118 = break115.b;
				float temp_output_847_0 = ( HeightMap1118 * break834.y );
				#if defined( _QUALITY_FAST )
				float staticSwitch159 = temp_output_847_0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch159 = temp_output_847_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch159 = temp_output_847_0;
				#else
				float staticSwitch159 = temp_output_847_0;
				#endif
				float2 temp_output_5_0_g7 = UV298.xy;
				int temp_output_4_0_g7 = (int)break102.z;
				float2 temp_output_9_0_g7 = Mip101;
				float2 temp_output_12_0_g7 = ddx( temp_output_9_0_g7 );
				float2 temp_output_13_0_g7 = ddy( temp_output_9_0_g7 );
				float4 tex2DArrayNode3_g7 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g7,(float)temp_output_4_0_g7, temp_output_12_0_g7, temp_output_13_0_g7 );
				float localStochasticTiling190_g8 = ( 0.0 );
				float2 Input_UV317_g8 = temp_output_5_0_g7;
				float2 UV190_g8 = Input_UV317_g8;
				float2 UV1190_g8 = float2( 0,0 );
				float2 UV2190_g8 = float2( 0,0 );
				float2 UV3190_g8 = float2( 0,0 );
				float W1190_g8 = 0.0;
				float W2190_g8 = 0.0;
				float W3190_g8 = 0.0;
				StochasticTiling( UV190_g8 , UV1190_g8 , UV2190_g8 , UV3190_g8 , W1190_g8 , W2190_g8 , W3190_g8 );
				float Input_Index330_g8 = (float)temp_output_4_0_g7;
				float2 temp_output_358_0_g8 = temp_output_12_0_g7;
				float2 temp_output_359_0_g8 = temp_output_13_0_g7;
				float4 Output_2DArray152_g8 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W1190_g8 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W2190_g8 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W3190_g8 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g7 = Output_2DArray152_g8;
				#else
				float4 staticSwitch7_g7 = tex2DArrayNode3_g7;
				#endif
				float4 ifLocalVar17_g7 = 0;
				UNITY_BRANCH 
				if( break899.z > 0.0 )
				ifLocalVar17_g7 = staticSwitch7_g7;
				else if( break899.z == 0.0 )
				ifLocalVar17_g7 = tex2DArrayNode3_g7;
				float4 break114 = ifLocalVar17_g7;
				float HeightMap2120 = break114.b;
				float temp_output_848_0 = ( HeightMap2120 * break834.z );
				#if defined( _QUALITY_FAST )
				float staticSwitch161 = 0.0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch161 = temp_output_848_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch161 = temp_output_848_0;
				#else
				float staticSwitch161 = 0.0;
				#endif
				float2 temp_output_5_0_g1 = UV399.xy;
				int temp_output_4_0_g1 = (int)break102.w;
				float2 temp_output_9_0_g1 = Mip101;
				float2 temp_output_12_0_g1 = ddx( temp_output_9_0_g1 );
				float2 temp_output_13_0_g1 = ddy( temp_output_9_0_g1 );
				float4 tex2DArrayNode3_g1 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g1,(float)temp_output_4_0_g1, temp_output_12_0_g1, temp_output_13_0_g1 );
				float localStochasticTiling190_g6 = ( 0.0 );
				float2 Input_UV317_g6 = temp_output_5_0_g1;
				float2 UV190_g6 = Input_UV317_g6;
				float2 UV1190_g6 = float2( 0,0 );
				float2 UV2190_g6 = float2( 0,0 );
				float2 UV3190_g6 = float2( 0,0 );
				float W1190_g6 = 0.0;
				float W2190_g6 = 0.0;
				float W3190_g6 = 0.0;
				StochasticTiling( UV190_g6 , UV1190_g6 , UV2190_g6 , UV3190_g6 , W1190_g6 , W2190_g6 , W3190_g6 );
				float Input_Index330_g6 = (float)temp_output_4_0_g1;
				float2 temp_output_358_0_g6 = temp_output_12_0_g1;
				float2 temp_output_359_0_g6 = temp_output_13_0_g1;
				float4 Output_2DArray152_g6 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W1190_g6 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W2190_g6 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W3190_g6 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1 = Output_2DArray152_g6;
				#else
				float4 staticSwitch7_g1 = tex2DArrayNode3_g1;
				#endif
				float4 ifLocalVar17_g1 = 0;
				UNITY_BRANCH 
				if( break899.w > 0.0 )
				ifLocalVar17_g1 = staticSwitch7_g1;
				else if( break899.w == 0.0 )
				ifLocalVar17_g1 = tex2DArrayNode3_g1;
				float4 break113 = ifLocalVar17_g1;
				float HeightMap3117 = break113.b;
				#if defined( _QUALITY_FAST )
				float staticSwitch160 = 0.0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch160 = 0.0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch160 = ( HeightMap3117 * break834.w );
				#else
				float staticSwitch160 = 0.0;
				#endif
				float4 appendResult164 = (float4(staticSwitch158 , staticSwitch159 , staticSwitch161 , staticSwitch160));
				float4 HeightRawCombined0199 = saturate( pow( appendResult164 , 0.5 ) );
				float4 break13_g1066 = HeightRawCombined0199;
				float4 break15_g1066 = temp_output_14_0_g1066;
				float temp_output_53_0_g1066 = ( break13_g1066.x + break15_g1066.x );
				float temp_output_54_0_g1066 = ( break13_g1066.y + break15_g1066.y );
				float temp_output_55_0_g1066 = ( break13_g1066.z + break15_g1066.z );
				float temp_output_56_0_g1066 = ( break13_g1066.w + break15_g1066.w );
				float HeightBlending854 = _HeightBlendStrength;
				float temp_output_79_0_g1066 = ( max( max( max( temp_output_53_0_g1066 , temp_output_54_0_g1066 ) , temp_output_55_0_g1066 ) , temp_output_56_0_g1066 ) - HeightBlending854 );
				float temp_output_63_0_g1066 = max( ( temp_output_53_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_67_0_g1066 = max( ( temp_output_54_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_71_0_g1066 = max( ( temp_output_55_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_73_0_g1066 = max( ( temp_output_56_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float Blending197 = _HeightBlending;
				float4 lerpResult78_g1066 = lerp( weightedBlend30_g1066 , ( ( ( temp_output_18_0_g1066 * temp_output_63_0_g1066 ) + ( temp_output_22_0_g1066 * temp_output_67_0_g1066 ) + ( temp_output_23_0_g1066 * temp_output_71_0_g1066 ) + ( temp_output_24_0_g1066 * temp_output_73_0_g1066 ) ) / ( temp_output_63_0_g1066 + temp_output_67_0_g1066 + temp_output_71_0_g1066 + temp_output_73_0_g1066 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1066 = lerpResult78_g1066;
				#else
				float4 staticSwitch77_g1066 = weightedBlend30_g1066;
				#endif
				float4 Albedo0520 = staticSwitch77_g1066;
				float3 ase_worldNormal = packedInput.ase_texcoord4.xyz;
				float3 ase_worldPos = packedInput.ase_texcoord5.xyz;
				float4 appendResult179 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise195 = SimpleNoise( appendResult179.xy*_PuddleCoverageNoise );
				simpleNoise195 = simpleNoise195*2 - 1;
				float Snow_Amount174 = _EnviroSnow;
				float Wetness228 = _EnviroWetness;
				#ifdef _PUDDLES_ON
				float staticSwitch258 = saturate( ( ( pow( ( ase_worldNormal.y - 0.99 ) , 0.4 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise195 ) ) * saturate( ( 2.0 - Snow_Amount174 ) ) ) * Wetness228 ) ) * 8.0 ) );
				#else
				float staticSwitch258 = 0.0;
				#endif
				float Puddle_Mask264 = staticSwitch258;
				float4 lerpResult524 = lerp( float4( 1,1,1,0 ) , _PuddleColor , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float4 staticSwitch543 = ( Albedo0520 * lerpResult524 );
				#else
				float4 staticSwitch543 = Albedo0520;
				#endif
				float2 temp_cast_63 = (_SnowTiling).xx;
				float2 texCoord232 = packedInput.ase_texcoord2.xy * temp_cast_63 + float2( 0,0 );
				float2 temp_output_5_0_g1067 = texCoord232;
				float localStochasticTiling2_g1068 = ( 0.0 );
				float2 Input_UV145_g1068 = temp_output_5_0_g1067;
				float2 UV2_g1068 = Input_UV145_g1068;
				float2 UV12_g1068 = float2( 0,0 );
				float2 UV22_g1068 = float2( 0,0 );
				float2 UV32_g1068 = float2( 0,0 );
				float W12_g1068 = 0.0;
				float W22_g1068 = 0.0;
				float W32_g1068 = 0.0;
				StochasticTiling( UV2_g1068 , UV12_g1068 , UV22_g1068 , UV32_g1068 , W12_g1068 , W22_g1068 , W32_g1068 );
				float2 temp_output_10_0_g1068 = ddx( Input_UV145_g1068 );
				float2 temp_output_12_0_g1068 = ddy( Input_UV145_g1068 );
				float4 Output_2D293_g1068 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV12_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W12_g1068 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV22_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W22_g1068 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV32_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W32_g1068 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1067 = Output_2D293_g1068;
				#else
				float4 staticSwitch7_g1067 = SAMPLE_TEXTURE2D( _SnowAlbedo, sampler_SnowAlbedo, temp_output_5_0_g1067 );
				#endif
				float4 Snow_Albedo522 = staticSwitch7_g1067;
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float4 temp_output_14_0_g1053 = SplatWeights198;
				float4 break898 = samplingType895;
				float2 temp_output_5_0_g1049 = UV0100.xy;
				float4 break391 = SplatIndex44;
				int temp_output_4_0_g1049 = (int)break391.x;
				float2 temp_output_9_0_g1049 = Mip101;
				float2 temp_output_12_0_g1049 = ddx( temp_output_9_0_g1049 );
				float2 temp_output_13_0_g1049 = ddy( temp_output_9_0_g1049 );
				float4 tex2DArrayNode3_g1049 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1049,(float)temp_output_4_0_g1049, temp_output_12_0_g1049, temp_output_13_0_g1049 );
				float localStochasticTiling190_g1050 = ( 0.0 );
				float2 Input_UV317_g1050 = temp_output_5_0_g1049;
				float2 UV190_g1050 = Input_UV317_g1050;
				float2 UV1190_g1050 = float2( 0,0 );
				float2 UV2190_g1050 = float2( 0,0 );
				float2 UV3190_g1050 = float2( 0,0 );
				float W1190_g1050 = 0.0;
				float W2190_g1050 = 0.0;
				float W3190_g1050 = 0.0;
				StochasticTiling( UV190_g1050 , UV1190_g1050 , UV2190_g1050 , UV3190_g1050 , W1190_g1050 , W2190_g1050 , W3190_g1050 );
				float Input_Index330_g1050 = (float)temp_output_4_0_g1049;
				float2 temp_output_358_0_g1050 = temp_output_12_0_g1049;
				float2 temp_output_359_0_g1050 = temp_output_13_0_g1049;
				float4 Output_2DArray152_g1050 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W1190_g1050 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W2190_g1050 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W3190_g1050 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1049 = Output_2DArray152_g1050;
				#else
				float4 staticSwitch7_g1049 = tex2DArrayNode3_g1049;
				#endif
				float4 ifLocalVar17_g1049 = 0;
				UNITY_BRANCH 
				if( break898.x > 0.0 )
				ifLocalVar17_g1049 = staticSwitch7_g1049;
				else if( break898.x == 0.0 )
				ifLocalVar17_g1049 = tex2DArrayNode3_g1049;
				float localGetLayerSettings368 = ( 0.0 );
				float4 in0368 = _NormalScale00;
				float4 in1368 = _NormalScale01;
				float4 in2368 = _NormalScale02;
				float4 index368 = SplatIndex44;
				float4 Out0368 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0368,in1368,in2368,index368,Out0368);
				}
				float4 NormalScales375 = Out0368;
				float4 break401 = NormalScales375;
				float3 unpack417 = UnpackNormalScale( ifLocalVar17_g1049, break401.x );
				unpack417.z = lerp( 1, unpack417.z, saturate(break401.x) );
				#if defined( _QUALITY_FAST )
				float3 staticSwitch433 = unpack417;
				#elif defined( _QUALITY_BALANCE )
				float3 staticSwitch433 = unpack417;
				#elif defined( _QUALITY_QUALITY )
				float3 staticSwitch433 = unpack417;
				#else
				float3 staticSwitch433 = unpack417;
				#endif
				float4 temp_output_18_0_g1053 = float4( staticSwitch433 , 0.0 );
				float2 temp_output_5_0_g1045 = UV197.xy;
				int temp_output_4_0_g1045 = (int)break391.y;
				float2 temp_output_9_0_g1045 = Mip101;
				float2 temp_output_12_0_g1045 = ddx( temp_output_9_0_g1045 );
				float2 temp_output_13_0_g1045 = ddy( temp_output_9_0_g1045 );
				float4 tex2DArrayNode3_g1045 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1045,(float)temp_output_4_0_g1045, temp_output_12_0_g1045, temp_output_13_0_g1045 );
				float localStochasticTiling190_g1046 = ( 0.0 );
				float2 Input_UV317_g1046 = temp_output_5_0_g1045;
				float2 UV190_g1046 = Input_UV317_g1046;
				float2 UV1190_g1046 = float2( 0,0 );
				float2 UV2190_g1046 = float2( 0,0 );
				float2 UV3190_g1046 = float2( 0,0 );
				float W1190_g1046 = 0.0;
				float W2190_g1046 = 0.0;
				float W3190_g1046 = 0.0;
				StochasticTiling( UV190_g1046 , UV1190_g1046 , UV2190_g1046 , UV3190_g1046 , W1190_g1046 , W2190_g1046 , W3190_g1046 );
				float Input_Index330_g1046 = (float)temp_output_4_0_g1045;
				float2 temp_output_358_0_g1046 = temp_output_12_0_g1045;
				float2 temp_output_359_0_g1046 = temp_output_13_0_g1045;
				float4 Output_2DArray152_g1046 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W1190_g1046 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W2190_g1046 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W3190_g1046 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1045 = Output_2DArray152_g1046;
				#else
				float4 staticSwitch7_g1045 = tex2DArrayNode3_g1045;
				#endif
				float4 ifLocalVar17_g1045 = 0;
				UNITY_BRANCH 
				if( break898.y > 0.0 )
				ifLocalVar17_g1045 = staticSwitch7_g1045;
				else if( break898.y == 0.0 )
				ifLocalVar17_g1045 = tex2DArrayNode3_g1045;
				float3 unpack416 = UnpackNormalScale( ifLocalVar17_g1045, break401.y );
				unpack416.z = lerp( 1, unpack416.z, saturate(break401.y) );
				#if defined( _QUALITY_FAST )
				float3 staticSwitch434 = unpack416;
				#elif defined( _QUALITY_BALANCE )
				float3 staticSwitch434 = unpack416;
				#elif defined( _QUALITY_QUALITY )
				float3 staticSwitch434 = unpack416;
				#else
				float3 staticSwitch434 = unpack416;
				#endif
				float4 temp_output_22_0_g1053 = float4( staticSwitch434 , 0.0 );
				float4 _Vector3 = float4(0,0,0,0);
				float2 temp_output_5_0_g1051 = UV298.xy;
				int temp_output_4_0_g1051 = (int)break391.z;
				float2 temp_output_9_0_g1051 = Mip101;
				float2 temp_output_12_0_g1051 = ddx( temp_output_9_0_g1051 );
				float2 temp_output_13_0_g1051 = ddy( temp_output_9_0_g1051 );
				float4 tex2DArrayNode3_g1051 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1051,(float)temp_output_4_0_g1051, temp_output_12_0_g1051, temp_output_13_0_g1051 );
				float localStochasticTiling190_g1052 = ( 0.0 );
				float2 Input_UV317_g1052 = temp_output_5_0_g1051;
				float2 UV190_g1052 = Input_UV317_g1052;
				float2 UV1190_g1052 = float2( 0,0 );
				float2 UV2190_g1052 = float2( 0,0 );
				float2 UV3190_g1052 = float2( 0,0 );
				float W1190_g1052 = 0.0;
				float W2190_g1052 = 0.0;
				float W3190_g1052 = 0.0;
				StochasticTiling( UV190_g1052 , UV1190_g1052 , UV2190_g1052 , UV3190_g1052 , W1190_g1052 , W2190_g1052 , W3190_g1052 );
				float Input_Index330_g1052 = (float)temp_output_4_0_g1051;
				float2 temp_output_358_0_g1052 = temp_output_12_0_g1051;
				float2 temp_output_359_0_g1052 = temp_output_13_0_g1051;
				float4 Output_2DArray152_g1052 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W1190_g1052 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W2190_g1052 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W3190_g1052 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1051 = Output_2DArray152_g1052;
				#else
				float4 staticSwitch7_g1051 = tex2DArrayNode3_g1051;
				#endif
				float4 ifLocalVar17_g1051 = 0;
				UNITY_BRANCH 
				if( break898.z > 0.0 )
				ifLocalVar17_g1051 = staticSwitch7_g1051;
				else if( break898.z == 0.0 )
				ifLocalVar17_g1051 = tex2DArrayNode3_g1051;
				float3 unpack414 = UnpackNormalScale( ifLocalVar17_g1051, break401.z );
				unpack414.z = lerp( 1, unpack414.z, saturate(break401.z) );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch435 = _Vector3;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch435 = float4( unpack414 , 0.0 );
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch435 = float4( unpack414 , 0.0 );
				#else
				float4 staticSwitch435 = _Vector3;
				#endif
				float4 temp_output_23_0_g1053 = staticSwitch435;
				float2 temp_output_5_0_g1047 = UV399.xy;
				int temp_output_4_0_g1047 = (int)break391.w;
				float2 temp_output_9_0_g1047 = Mip101;
				float2 temp_output_12_0_g1047 = ddx( temp_output_9_0_g1047 );
				float2 temp_output_13_0_g1047 = ddy( temp_output_9_0_g1047 );
				float4 tex2DArrayNode3_g1047 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1047,(float)temp_output_4_0_g1047, temp_output_12_0_g1047, temp_output_13_0_g1047 );
				float localStochasticTiling190_g1048 = ( 0.0 );
				float2 Input_UV317_g1048 = temp_output_5_0_g1047;
				float2 UV190_g1048 = Input_UV317_g1048;
				float2 UV1190_g1048 = float2( 0,0 );
				float2 UV2190_g1048 = float2( 0,0 );
				float2 UV3190_g1048 = float2( 0,0 );
				float W1190_g1048 = 0.0;
				float W2190_g1048 = 0.0;
				float W3190_g1048 = 0.0;
				StochasticTiling( UV190_g1048 , UV1190_g1048 , UV2190_g1048 , UV3190_g1048 , W1190_g1048 , W2190_g1048 , W3190_g1048 );
				float Input_Index330_g1048 = (float)temp_output_4_0_g1047;
				float2 temp_output_358_0_g1048 = temp_output_12_0_g1047;
				float2 temp_output_359_0_g1048 = temp_output_13_0_g1047;
				float4 Output_2DArray152_g1048 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W1190_g1048 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W2190_g1048 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W3190_g1048 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1047 = Output_2DArray152_g1048;
				#else
				float4 staticSwitch7_g1047 = tex2DArrayNode3_g1047;
				#endif
				float4 ifLocalVar17_g1047 = 0;
				UNITY_BRANCH 
				if( break898.w > 0.0 )
				ifLocalVar17_g1047 = staticSwitch7_g1047;
				else if( break898.w == 0.0 )
				ifLocalVar17_g1047 = tex2DArrayNode3_g1047;
				float3 unpack415 = UnpackNormalScale( ifLocalVar17_g1047, break401.w );
				unpack415.z = lerp( 1, unpack415.z, saturate(break401.w) );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch436 = _Vector3;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch436 = _Vector3;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch436 = float4( unpack415 , 0.0 );
				#else
				float4 staticSwitch436 = _Vector3;
				#endif
				float4 temp_output_24_0_g1053 = staticSwitch436;
				float4 weightedBlendVar30_g1053 = temp_output_14_0_g1053;
				float4 weightedBlend30_g1053 = ( weightedBlendVar30_g1053.x*temp_output_18_0_g1053 + weightedBlendVar30_g1053.y*temp_output_22_0_g1053 + weightedBlendVar30_g1053.z*temp_output_23_0_g1053 + weightedBlendVar30_g1053.w*temp_output_24_0_g1053 );
				float4 break13_g1053 = HeightRawCombined0199;
				float4 break15_g1053 = temp_output_14_0_g1053;
				float temp_output_53_0_g1053 = ( break13_g1053.x + break15_g1053.x );
				float temp_output_54_0_g1053 = ( break13_g1053.y + break15_g1053.y );
				float temp_output_55_0_g1053 = ( break13_g1053.z + break15_g1053.z );
				float temp_output_56_0_g1053 = ( break13_g1053.w + break15_g1053.w );
				float temp_output_79_0_g1053 = ( max( max( max( temp_output_53_0_g1053 , temp_output_54_0_g1053 ) , temp_output_55_0_g1053 ) , temp_output_56_0_g1053 ) - HeightBlending854 );
				float temp_output_63_0_g1053 = max( ( temp_output_53_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_67_0_g1053 = max( ( temp_output_54_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_71_0_g1053 = max( ( temp_output_55_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_73_0_g1053 = max( ( temp_output_56_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float4 lerpResult78_g1053 = lerp( weightedBlend30_g1053 , ( ( ( temp_output_18_0_g1053 * temp_output_63_0_g1053 ) + ( temp_output_22_0_g1053 * temp_output_67_0_g1053 ) + ( temp_output_23_0_g1053 * temp_output_71_0_g1053 ) + ( temp_output_24_0_g1053 * temp_output_73_0_g1053 ) ) / ( temp_output_63_0_g1053 + temp_output_67_0_g1053 + temp_output_71_0_g1053 + temp_output_73_0_g1053 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1053 = lerpResult78_g1053;
				#else
				float4 staticSwitch77_g1053 = weightedBlend30_g1053;
				#endif
				float4 Normal0450 = staticSwitch77_g1053;
				float temp_output_395_0 = ( _TimeParameters.x * 0.05 );
				float2 appendResult379 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 temp_output_397_0 = ( appendResult379 * _PuddleWaveTiling );
				float2 panner408 = ( temp_output_395_0 * float2( 1,0 ) + temp_output_397_0);
				float temp_output_406_0 = ( Puddle_Mask264 * ( _PuddleWaveIntensity * Wetness228 ) );
				float3 unpack420 = UnpackNormalScale( SAMPLE_TEXTURE2D( _WaveNormal, sampler_WaveNormal, panner408 ), temp_output_406_0 );
				unpack420.z = lerp( 1, unpack420.z, saturate(temp_output_406_0) );
				float2 panner407 = ( temp_output_395_0 * float2( 0,1 ) + temp_output_397_0);
				float3 unpack419 = UnpackNormalScale( SAMPLE_TEXTURE2D( _WaveNormal, sampler_WaveNormal, panner407 ), temp_output_406_0 );
				unpack419.z = lerp( 1, unpack419.z, saturate(temp_output_406_0) );
				float3 Puddle447 = BlendNormal( unpack420 , unpack419 );
				float4 lerpResult457 = lerp( Normal0450 , float4( Puddle447 , 0.0 ) , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float4 staticSwitch462 = lerpResult457;
				#else
				float4 staticSwitch462 = Normal0450;
				#endif
				float Rain_Intensity303 = _EnviroRainIntensity;
				float temp_output_325_0 = (1.0 + (( _RainFlowStrength * Rain_Intensity303 ) - 0.0) * (-1.0 - 1.0) / (1.0 - 0.0));
				float temp_output_306_0 = ( _TimeParameters.x * 0.05 );
				float4 transform287 = mul(GetObjectToWorldMatrix(),float4( packedInput.ase_texcoord3.xyz , 0.0 ));
				transform287.xyz = GetAbsolutePositionWS((transform287).xyz);
				float2 appendResult298 = (float2(( transform287.z * 0.7 ) , ( transform287.y * 0.2 )));
				float2 panner313 = ( temp_output_306_0 * float2( 0,1 ) + ( appendResult298 * _RainFlowTiling ));
				float2 texCoord285 = packedInput.ase_texcoord2.xy * float2( 10,10 ) + float2( 0,0 );
				float gradientNoise289 = UnityGradientNoise(texCoord285,_RainFlowDistortionScale);
				gradientNoise289 = gradientNoise289*0.5 + 0.5;
				float Distortion307 = ( gradientNoise289 * _RainFlowDistortionStrenght );
				float simpleNoise324 = SimpleNoise( ( panner313 + Distortion307 )*100.0 );
				simpleNoise324 = simpleNoise324*2 - 1;
				float smoothstepResult332 = smoothstep( temp_output_325_0 , 1.0 , simpleNoise324);
				float temp_output_335_0 = ( ( ( ase_worldNormal.y - 0.95 ) * -1.0 ) * _RainFlowIntensity );
				float3 temp_cast_99 = (0.3).xxx;
				float3 break337 = ( abs( ase_worldNormal ) - temp_cast_99 );
				float lerpResult342 = lerp( 0.0 , ( smoothstepResult332 * temp_output_335_0 ) , break337.x);
				float4 transform286 = mul(GetObjectToWorldMatrix(),float4( packedInput.ase_texcoord3.xyz , 0.0 ));
				transform286.xyz = GetAbsolutePositionWS((transform286).xyz);
				float2 appendResult299 = (float2(( transform286.x * 0.7 ) , ( transform286.y * 0.2 )));
				float2 panner312 = ( temp_output_306_0 * float2( 0,1 ) + ( appendResult299 * _RainFlowTiling ));
				float simpleNoise328 = SimpleNoise( ( panner312 + Distortion307 )*100.0 );
				simpleNoise328 = simpleNoise328*2 - 1;
				float smoothstepResult333 = smoothstep( temp_output_325_0 , 1.0 , simpleNoise328);
				float lerpResult341 = lerp( 0.0 , ( smoothstepResult333 * temp_output_335_0 ) , break337.z);
				float Rain_Distance_Fade340 = ( 1.0 - sqrt( saturate( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _RainDistanceFade ) ) ) );
				float temp_output_366_0 = saturate( ( ( lerpResult342 + lerpResult341 ) * Rain_Distance_Fade340 ) );
				float temp_output_373_0 = ddx( temp_output_366_0 );
				float temp_output_384_0 = ddy( temp_output_366_0 );
				float3 appendResult445 = (float3(temp_output_373_0 , temp_output_384_0 , sqrt( ( ( 1.0 - ( temp_output_373_0 * temp_output_373_0 ) ) - ( temp_output_384_0 * temp_output_384_0 ) ) )));
				float3 normalizeResult449 = normalize( appendResult445 );
				float3 RainFlow453 = normalizeResult449;
				float localRainRipples1_g1054 = ( 0.0 );
				float2 appendResult426 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 UV1_g1054 = ( appendResult426 * _RainDropTiling );
				float AngleOffset1_g1054 = 5.0;
				float lerpResult428 = lerp( 64.0 , 12.0 , Puddle_Mask264);
				float CellDensity1_g1054 = round( lerpResult428 );
				float Time1_g1054 = ( _TimeParameters.x * _RainDropSpeed );
				float temp_output_358_0 = ( _RainDropIntensity * 1.5 );
				float lerpResult365 = lerp( _RainDropIntensity , temp_output_358_0 , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float staticSwitch372 = lerpResult365;
				#else
				float staticSwitch372 = temp_output_358_0;
				#endif
				float switchResult422 = (((isFrontFace>0)?(( ( ( ase_worldNormal.y - 0.7 ) * ( staticSwitch372 * Rain_Intensity303 ) ) * Rain_Distance_Fade340 )):(0.0)));
				float Strength1_g1054 = max( 0.0 , switchResult422 );
				float3 normal1_g1054 = float3( 0,0,0 );
				float Out1_g1054 = 0.0;
				float lerpResult440 = lerp( 5.0 , 8.0 , Puddle_Mask264);
				float pow1_g1054 = lerpResult440;
				float lerpResult439 = lerp( 1.0 , 0.0 , Puddle_Mask264);
				float sin1_g1054 = lerpResult439;
				{
				Rain(UV1_g1054,AngleOffset1_g1054,CellDensity1_g1054,Time1_g1054,Strength1_g1054,pow1_g1054,sin1_g1054,Out1_g1054,normal1_g1054);
				}
				float3 Rain_Drop452 = normal1_g1054;
				#ifdef _RAIN_ON
				float4 staticSwitch468 = float4( BlendNormal( staticSwitch462.xyz , BlendNormal( RainFlow453 , Rain_Drop452 ) ) , 0.0 );
				#else
				float4 staticSwitch468 = staticSwitch462;
				#endif
				float2 temp_output_5_0_g1055 = texCoord232;
				float localStochasticTiling2_g1056 = ( 0.0 );
				float2 Input_UV145_g1056 = temp_output_5_0_g1055;
				float2 UV2_g1056 = Input_UV145_g1056;
				float2 UV12_g1056 = float2( 0,0 );
				float2 UV22_g1056 = float2( 0,0 );
				float2 UV32_g1056 = float2( 0,0 );
				float W12_g1056 = 0.0;
				float W22_g1056 = 0.0;
				float W32_g1056 = 0.0;
				StochasticTiling( UV2_g1056 , UV12_g1056 , UV22_g1056 , UV32_g1056 , W12_g1056 , W22_g1056 , W32_g1056 );
				float2 temp_output_10_0_g1056 = ddx( Input_UV145_g1056 );
				float2 temp_output_12_0_g1056 = ddy( Input_UV145_g1056 );
				float4 Output_2D293_g1056 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV12_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W12_g1056 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV22_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W22_g1056 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV32_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W32_g1056 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1055 = Output_2D293_g1056;
				#else
				float4 staticSwitch7_g1055 = SAMPLE_TEXTURE2D( _SnowNormal, sampler_SnowNormal, temp_output_5_0_g1055 );
				#endif
				float3 unpack463 = UnpackNormalScale( staticSwitch7_g1055, _SnowNormalScale );
				unpack463.z = lerp( 1, unpack463.z, saturate(_SnowNormalScale) );
				float3 Snow_Normal465 = unpack463;
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( packedInput.ase_texcoord3.xyz.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( packedInput.ase_texcoord3.xyz.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float4 lerpResult470 = lerp( staticSwitch468 , float4( Snow_Normal465 , 0.0 ) , Snow_Blending247);
				#ifdef _SNOW_ON
				float4 staticSwitch471 = lerpResult470;
				#else
				float4 staticSwitch471 = staticSwitch468;
				#endif
				float4 Normal_Final472 = staticSwitch471;
				float3 ase_worldTangent = packedInput.ase_texcoord6.xyz;
				float3 ase_worldBitangent = packedInput.ase_texcoord7.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(ase_worldTangent.x,ase_worldBitangent.x,ase_worldNormal.x,ase_worldTangent.y,ase_worldBitangent.y,ase_worldNormal.y,ase_worldTangent.z,ase_worldBitangent.z,ase_worldNormal.z);
				float3 tangentToWorldDir474 = mul( ase_tangentToWorldFast, Normal_Final472.xyz );
				float dotResult497 = dot( ase_worldViewDir , -( -_DirectionalLightDatas[0].forward + ( tangentToWorldDir474 * _SSSDistortion ) ) );
				float dotResult504 = dot( dotResult497 , _SSSScale );
				float SSS523 = ( saturate( dotResult504 ) * _SSSIntensity );
				float4 lerpResult553 = lerp( staticSwitch543 , ( Snow_Albedo522 + SSS523 ) , Snow_Blending247);
				#ifdef _SNOW_ON
				float4 staticSwitch562 = lerpResult553;
				#else
				float4 staticSwitch562 = staticSwitch543;
				#endif
				float4 Albedo_Final575 = ( staticSwitch562 + ( Wetness228 * -0.02 ) );
				float4 localClipHoles583 = ( Albedo_Final575 );
				float2 uv_TerrainHolesTexture = packedInput.ase_texcoord2.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				float holeClipValue579 = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float Hole583 = holeClipValue579;
				{
				clip(Hole583 == 0.0f ? -1 : 1);
				}
				float4 AlbedoCombined586 = localClipHoles583;
				
				float4 break668 = Normal_Final472;
				float3 appendResult671 = (float3(break668.x , break668.y , ( break668.z + 0.001 )));
				#ifdef _TERRAIN_INSTANCED_PERPIXEL_NORMAL
				float3 staticSwitch665 = appendResult671;
				#else
				float3 staticSwitch665 = appendResult671;
				#endif
				
				float4 temp_output_14_0_g1042 = SplatWeights198;
				float localGetLayerSettings163 = ( 0.0 );
				float4 in0163 = _Metallic00;
				float4 in1163 = _Metallic01;
				float4 in2163 = _Metallic02;
				float4 index163 = SplatIndex44;
				float4 Out0163 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0163,in1163,in2163,index163,Out0163);
				}
				float4 Metallic167 = Out0163;
				float4 break177 = Metallic167;
				float localGetLayerSettings728 = ( 0.0 );
				float4 in0728 = _Occlusion0;
				float4 in1728 = _Occlusion1;
				float4 in2728 = _Occlusion2;
				float4 index728 = SplatIndex44;
				float4 Out0728 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0728,in1728,in2728,index728,Out0728);
				}
				float4 Occlusion729 = Out0728;
				float4 break762 = Occlusion729;
				float localGetLayerSettings977 = ( 0.0 );
				float4 in0977 = _DisplacementMod0;
				float4 in1977 = _DisplacementMod1;
				float4 in2977 = _DisplacementMod2;
				float4 index977 = SplatIndex44;
				float4 Out0977 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0977,in1977,in2977,index977,Out0977);
				}
				float4 displacementModifier978 = Out0977;
				float4 break982 = displacementModifier978;
				float localGetLayerSettings162 = ( 0.0 );
				float4 in0162 = _Smoothness00;
				float4 in1162 = _Smoothness01;
				float4 in2162 = _Smoothness02;
				float4 index162 = SplatIndex44;
				float4 Out0162 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0162,in1162,in2162,index162,Out0162);
				}
				float4 Smoothness166 = Out0162;
				float4 break178 = Smoothness166;
				float4 appendResult205 = (float4(( break116.r + break177.x ) , ( break116.g + break762.x ) , ( HeightMap0119 * break982.x ) , ( break116.a * break178.x )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch221 = appendResult205;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch221 = appendResult205;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch221 = appendResult205;
				#else
				float4 staticSwitch221 = appendResult205;
				#endif
				float4 temp_output_18_0_g1042 = staticSwitch221;
				float4 appendResult206 = (float4(( break177.y + break115.r ) , ( break115.g + break762.y ) , ( HeightMap1118 * break982.y ) , ( break115.a * break178.y )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch222 = appendResult206;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch222 = appendResult206;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch222 = appendResult206;
				#else
				float4 staticSwitch222 = appendResult206;
				#endif
				float4 temp_output_22_0_g1042 = staticSwitch222;
				float4 _Vector4 = float4(0,0,0,0);
				float4 appendResult207 = (float4(( break177.z + break114.r ) , ( break114.g + break762.z ) , ( HeightMap2120 * break982.z ) , ( break114.a * break178.z )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch223 = _Vector4;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch223 = appendResult207;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch223 = appendResult207;
				#else
				float4 staticSwitch223 = _Vector4;
				#endif
				float4 temp_output_23_0_g1042 = staticSwitch223;
				float4 appendResult208 = (float4(( break177.w + break113.r ) , ( break113.g + break762.w ) , ( HeightMap3117 * break982.w ) , ( break113.a * break178.w )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch224 = _Vector4;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch224 = _Vector4;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch224 = appendResult208;
				#else
				float4 staticSwitch224 = _Vector4;
				#endif
				float4 temp_output_24_0_g1042 = staticSwitch224;
				float4 weightedBlendVar30_g1042 = temp_output_14_0_g1042;
				float4 weightedBlend30_g1042 = ( weightedBlendVar30_g1042.x*temp_output_18_0_g1042 + weightedBlendVar30_g1042.y*temp_output_22_0_g1042 + weightedBlendVar30_g1042.z*temp_output_23_0_g1042 + weightedBlendVar30_g1042.w*temp_output_24_0_g1042 );
				float4 break13_g1042 = HeightRawCombined0199;
				float4 break15_g1042 = temp_output_14_0_g1042;
				float temp_output_53_0_g1042 = ( break13_g1042.x + break15_g1042.x );
				float temp_output_54_0_g1042 = ( break13_g1042.y + break15_g1042.y );
				float temp_output_55_0_g1042 = ( break13_g1042.z + break15_g1042.z );
				float temp_output_56_0_g1042 = ( break13_g1042.w + break15_g1042.w );
				float temp_output_79_0_g1042 = ( max( max( max( temp_output_53_0_g1042 , temp_output_54_0_g1042 ) , temp_output_55_0_g1042 ) , temp_output_56_0_g1042 ) - HeightBlending854 );
				float temp_output_63_0_g1042 = max( ( temp_output_53_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_67_0_g1042 = max( ( temp_output_54_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_71_0_g1042 = max( ( temp_output_55_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_73_0_g1042 = max( ( temp_output_56_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float4 lerpResult78_g1042 = lerp( weightedBlend30_g1042 , ( ( ( temp_output_18_0_g1042 * temp_output_63_0_g1042 ) + ( temp_output_22_0_g1042 * temp_output_67_0_g1042 ) + ( temp_output_23_0_g1042 * temp_output_71_0_g1042 ) + ( temp_output_24_0_g1042 * temp_output_73_0_g1042 ) ) / ( temp_output_63_0_g1042 + temp_output_67_0_g1042 + temp_output_71_0_g1042 + temp_output_73_0_g1042 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1042 = lerpResult78_g1042;
				#else
				float4 staticSwitch77_g1042 = weightedBlend30_g1042;
				#endif
				float4 Mask0240 = staticSwitch77_g1042;
				float4 break245 = Mask0240;
				float Metallic0569 = break245.x;
				float2 temp_output_5_0_g1043 = texCoord232;
				float localStochasticTiling2_g1044 = ( 0.0 );
				float2 Input_UV145_g1044 = temp_output_5_0_g1043;
				float2 UV2_g1044 = Input_UV145_g1044;
				float2 UV12_g1044 = float2( 0,0 );
				float2 UV22_g1044 = float2( 0,0 );
				float2 UV32_g1044 = float2( 0,0 );
				float W12_g1044 = 0.0;
				float W22_g1044 = 0.0;
				float W32_g1044 = 0.0;
				StochasticTiling( UV2_g1044 , UV12_g1044 , UV22_g1044 , UV32_g1044 , W12_g1044 , W22_g1044 , W32_g1044 );
				float2 temp_output_10_0_g1044 = ddx( Input_UV145_g1044 );
				float2 temp_output_12_0_g1044 = ddy( Input_UV145_g1044 );
				float4 Output_2D293_g1044 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV12_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W12_g1044 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV22_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W22_g1044 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV32_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W32_g1044 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1043 = Output_2D293_g1044;
				#else
				float4 staticSwitch7_g1043 = SAMPLE_TEXTURE2D( _SnowMask, sampler_SnowMask, temp_output_5_0_g1043 );
				#endif
				float4 break244 = staticSwitch7_g1043;
				float Snow_Metallic563 = ( break244.r + _SnowMetallic );
				float lerpResult577 = lerp( Metallic0569 , Snow_Metallic563 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch581 = lerpResult577;
				#else
				float staticSwitch581 = Metallic0569;
				#endif
				float Metallic_Final584 = staticSwitch581;
				
				float Smoothness0540 = break245.w;
				float Snow_Smoothness536 = ( break244.a * _SnowSmoothness );
				float lerpResult559 = lerp( Smoothness0540 , Snow_Smoothness536 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch564 = lerpResult559;
				#else
				float staticSwitch564 = Smoothness0540;
				#endif
				#ifdef _RAIN_ON
				float staticSwitch544 = ( Out1_g1054 * 0.2 );
				#else
				float staticSwitch544 = 0.0;
				#endif
				float RainDropSmoothness555 = staticSwitch544;
				#ifdef _RAIN_ON
				float staticSwitch545 = ( temp_output_366_0 * _RainFlowSmoothnessBoost );
				#else
				float staticSwitch545 = 0.0;
				#endif
				float RainFlowSmoothness557 = staticSwitch545;
				float Smoothness_Final585 = saturate( ( ( staticSwitch564 + ( ( ( _WetnessBoost * Wetness228 ) + saturate( ( Puddle_Mask264 - 0.2 ) ) ) * ( 1.0 - Snow_Blending247 ) ) ) + ( RainDropSmoothness555 + RainFlowSmoothness557 ) ) );
				
				float Occlusion0589 = break245.y;
				float Snow_Occlusion588 = break244.g;
				float lerpResult593 = lerp( Occlusion0589 , Snow_Occlusion588 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch594 = lerpResult593;
				#else
				float staticSwitch594 = Occlusion0589;
				#endif
				float Occlusion_Final595 = staticSwitch594;
				
				float Alpha1008 = holeClipValue579;
				
				surfaceDescription.BaseColor = AlbedoCombined586.xyz;
				surfaceDescription.Normal = staticSwitch665;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Metallic_Final584;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = Smoothness_Final585;
				surfaceDescription.Occlusion = Occlusion_Final595;
				surfaceDescription.Alpha = Alpha1008;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceDescription.TransmissionMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);
				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
				LightTransportData lightTransportData = GetLightTransportData(surfaceData, builtinData, bsdfData);

				float4 res = float4( 0.0, 0.0, 0.0, 1.0 );
				UnityMetaInput metaInput;
				metaInput.Albedo = lightTransportData.diffuseColor.rgb;
				metaInput.Emission = lightTransportData.emissiveColor;

			#ifdef EDITOR_VISUALIZATION
				metaInput.VizUV = packedInput.VizUV;
				metaInput.LightCoord = packedInput.LightCoord;
			#endif
				res = UnityMetaFragment(metaInput);

				return res;
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			Cull [_CullMode]
			ZWrite On
			ZClip [_ZClip]
			ZTest LEqual
			ColorMask 0

			HLSLPROGRAM
			#pragma shader_feature_local_fragment _ _DISABLE_DECALS
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma shader_feature_local _ _DOUBLESIDED_ON
			#pragma shader_feature_local _ _ALPHATEST_ON
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 140011
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT

			#pragma multi_compile_fragment _ SHADOWS_SHADOWMASK

			#pragma vertex Vert
			#pragma fragment Frag

			#define SHADERPASS SHADERPASS_SHADOWS

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

            //#if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            //#define FRAG_INPUTS_ENABLE_STRIPPING
            //#endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
                #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
                #define RAYTRACING_SHADER_GRAPH_LOW
            #endif

            #ifndef SHADER_UNLIT
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			    #define ASE_NEED_CULLFACE 1
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif

            #ifndef DEBUG_DISPLAY
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif

            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ColorTint3;
			float4 _ColorTint2;
			float4 _ColorTint4;
			float4 _ColorTint5;
			float4 _ColorTint6;
			float4 _ColorTint7;
			float4 _ColorTint8;
			float4 _ColorTint9;
			float4 _ColorTint10;
			float4 _ColorTint11;
			float4 _HeightContrast0;
			float4 _HeightContrast1;
			float4 _HeightContrast2;
			float4 _DisplacementMod0;
			float4 _Occlusion2;
			float4 _PuddleColor;
			float4 _Occlusion1;
			float4 _Occlusion0;
			float4 _Metallic02;
			float4 _Metallic01;
			float4 _NormalScale00;
			float4 _NormalScale01;
			float4 _NormalScale02;
			float4 _Metallic00;
			float4 _ColorTint1;
			float4 _TerrainHolesTexture_ST;
			float4 _ColorTint0;
			float4 _LayerScaleOffset11;
			float4 _Smoothness02;
			float4 _Smoothness01;
			float4 _Smoothness00;
			float4 _DisplacementMod2;
			float4 _Control_ST;
			float4 _Control1_ST;
			float4 _Control2_ST;
			float4 _SamplingType0;
			float4 _SamplingType1;
			float4 _DisplacementMod1;
			float4 _LayerScaleOffset0;
			float4 _SamplingType2;
			float4 _LayerScaleOffset2;
			float4 _LayerScaleOffset3;
			float4 _LayerScaleOffset4;
			float4 _LayerScaleOffset5;
			float4 _LayerScaleOffset6;
			float4 _LayerScaleOffset7;
			float4 _LayerScaleOffset8;
			float4 _LayerScaleOffset9;
			float4 _LayerScaleOffset10;
			float4 _LayerScaleOffset1;
			float _SSSDistortion;
			float _SnowNormalScale;
			float _RainDropIntensity;
			float _SSSScale;
			float _TessellationMaxDistance;
			float _RainDropSpeed;
			float _SnowMetallic;
			float _SnowSmoothness;
			float _SSSIntensity;
			float _RainDropTiling;
			float _HeightBlendStrength;
			float _RainFlowIntensity;
			float _TessellationMinDistance;
			float _TessellationFactor;
			float _SnowDisplacement;
			float _EnviroSnow;
			float _SnowSlopePower;
			float _SnowHeightBlending;
			float _MipDistanceBlending;
			float _WetnessBoost;
			float _HeightBlending;
			float _RainDistanceFade;
			float _PuddleIntensity;
			float _EnviroWetness;
			float _SnowTiling;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _RainFlowStrength;
			float _EnviroRainIntensity;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _PuddleCoverageNoise;
			float _RainFlowSmoothnessBoost;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			    float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			    float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			    float _TessPhongStrength;
			    float _TessValue;
			    float _TessMin;
			    float _TessMax;
			    float _TessEdgeLength;
			    float _TessMaxDisp;
			#endif
			CBUFFER_END

            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

        	#ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _SNOW_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap
			#include "EnviroInclude.hlsl"


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			void GetSplats( float4 in0, float4 in1, float4 in2, out float4 Out1, out float4 Out0 )
			{
				GetSplatsWeights(in0,in1,in2,Out0,Out1);
			}
			
			void GetUVS( float4 in0, float4 in1, float4 in2, float4 in3, float4 in4, float4 in5, float4 in6, float4 in7, float4 in8, float4 in9, float4 in10, float4 in11, float4 index, out float4 Out0, out float4 Out1, out float4 Out2, out float4 Out3 )
			{
				GetLayerUV(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,index,Out0,Out1,Out2,Out3);
			}
			
			void GetLayerSettings( float4 in0, float4 in1, float4 in2, float4 index, out float4 Out0 )
			{
				GetLayerValue(in0,in1,in2,index,Out0);
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// refraction ShadowCaster
                #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                    if (_EnableSSRefraction)
                    {
        
                        surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                        surfaceDescription.Alpha = 1.0;
                    }
                    else
                    {
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                        surfaceDescription.Alpha = 1.0;
                    }
                    #else
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                #endif

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif

                #ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                    surfaceData.normalWS = float3(0, 1, 0);
                #endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                    surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				float3 normalTS = float3(0.0f, 0.0f, 1.0f);

	            

	            
                #if ASE_SRP_VERSION >=140008
                #ifdef DECAL_NORMAL_BLENDING
					normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(normalTS, fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;

                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                     }
                    #endif

                    GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
                #else
					GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;
        
                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                    }
                    #endif
                #endif
                #endif
               

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz );
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				bentNormalWS = surfaceData.normalWS;

                #if defined(DEBUG_DISPLAY)
                    if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                    {
                        surfaceData.metallic = 0;
                    }
                    ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                #endif

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

                #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                    surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                #endif
			}

			// Get Surface And BuiltinData
			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                    LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);

				#ifdef _ALPHATEST_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
				#endif

				#ifdef _DEPTHOFFSET_ON
                    ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
				#endif

                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				#ifdef _DEPTHOFFSET_ON
                    builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

                #ifdef UNITY_VIRTUAL_TEXTURING
                    builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
                    builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
                    builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

                builtinData.emissiveColor = surfaceDescription.Emission;

                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification(inputMesh);
				float3 appendResult261 = (float3(_SnowDisplacement , _SnowDisplacement , _SnowDisplacement));
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float Snow_Amount174 = _EnviroSnow;
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float3 Snow_Displacement272 = ( ( appendResult261 * ase_worldNormal ) * ( Snow_Blending247 * Snow_Amount174 ) );
				#ifdef _SNOW_ON
				float3 staticSwitch279 = Snow_Displacement272;
				#else
				float3 staticSwitch279 = float3(0,0,0);
				#endif
				float3 DisplacementFinal282 = ( staticSwitch279 + float3(0,0,0) );
				
				float4 appendResult660 = (float4(cross( inputMesh.normalOS , float3(0,0,1) ) , -1.0));
				
				outputPackedVaryingsMeshToPS.ase_texcoord1.xy = inputMesh.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord1.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = DisplacementFinal282;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = appendResult660;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target2
			#elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target1
			#else
			#define SV_TARGET_DECAL SV_Target0
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#if defined(SCENESELECTIONPASS) || defined(SCENEPICKINGPASS)
						, out float4 outColor : SV_Target0
						#else
							#ifdef WRITE_MSAA_DEPTH
							, out float4 depthColor : SV_Target0
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target1
								#endif
							#else
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target0
								#endif
							#endif

							#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
							, out float4 outDecalBuffer : SV_TARGET_DECAL
							#endif
						#endif

						#if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
						
					)
			{
			UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
			UNITY_SETUP_INSTANCE_ID(packedInput);

				float3 positionRWS = packedInput.positionRWS.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				float2 uv_TerrainHolesTexture = packedInput.ase_texcoord1.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				float holeClipValue579 = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float Alpha1008 = holeClipValue579;
				
				surfaceDescription.Alpha = Alpha1008;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				float bias = max(abs(ddx(posInput.deviceDepth)), abs(ddy(posInput.deviceDepth))) * _SlopeScaleDepthBias;
				outputDepth += bias;
				#endif

				#ifdef WRITE_MSAA_DEPTH
					depthColor = packedInput.vmesh.positionCS.z;
					depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
				#endif

				#if defined(WRITE_NORMAL_BUFFER)
				EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
				#endif

                #if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
				DecalPrepassData decalPrepassData;
				decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
				decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
				EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
                #endif
			}
			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off

			HLSLPROGRAM
			#pragma shader_feature_local_fragment _ _DISABLE_DECALS
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma shader_feature_local _ _DOUBLESIDED_ON
			#pragma shader_feature_local _ _ALPHATEST_ON
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 140011
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma editor_sync_compilation
            #pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
		    #define SCENESELECTIONPASS 1

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

            //#if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            //#define FRAG_INPUTS_ENABLE_STRIPPING
            //#endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
                #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif

            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
                #define RAYTRACING_SHADER_GRAPH_LOW
            #endif

            #ifndef SHADER_UNLIT
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			    #define ASE_NEED_CULLFACE 1
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif

            #ifndef DEBUG_DISPLAY
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif

            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif

            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ColorTint3;
			float4 _ColorTint2;
			float4 _ColorTint4;
			float4 _ColorTint5;
			float4 _ColorTint6;
			float4 _ColorTint7;
			float4 _ColorTint8;
			float4 _ColorTint9;
			float4 _ColorTint10;
			float4 _ColorTint11;
			float4 _HeightContrast0;
			float4 _HeightContrast1;
			float4 _HeightContrast2;
			float4 _DisplacementMod0;
			float4 _Occlusion2;
			float4 _PuddleColor;
			float4 _Occlusion1;
			float4 _Occlusion0;
			float4 _Metallic02;
			float4 _Metallic01;
			float4 _NormalScale00;
			float4 _NormalScale01;
			float4 _NormalScale02;
			float4 _Metallic00;
			float4 _ColorTint1;
			float4 _TerrainHolesTexture_ST;
			float4 _ColorTint0;
			float4 _LayerScaleOffset11;
			float4 _Smoothness02;
			float4 _Smoothness01;
			float4 _Smoothness00;
			float4 _DisplacementMod2;
			float4 _Control_ST;
			float4 _Control1_ST;
			float4 _Control2_ST;
			float4 _SamplingType0;
			float4 _SamplingType1;
			float4 _DisplacementMod1;
			float4 _LayerScaleOffset0;
			float4 _SamplingType2;
			float4 _LayerScaleOffset2;
			float4 _LayerScaleOffset3;
			float4 _LayerScaleOffset4;
			float4 _LayerScaleOffset5;
			float4 _LayerScaleOffset6;
			float4 _LayerScaleOffset7;
			float4 _LayerScaleOffset8;
			float4 _LayerScaleOffset9;
			float4 _LayerScaleOffset10;
			float4 _LayerScaleOffset1;
			float _SSSDistortion;
			float _SnowNormalScale;
			float _RainDropIntensity;
			float _SSSScale;
			float _TessellationMaxDistance;
			float _RainDropSpeed;
			float _SnowMetallic;
			float _SnowSmoothness;
			float _SSSIntensity;
			float _RainDropTiling;
			float _HeightBlendStrength;
			float _RainFlowIntensity;
			float _TessellationMinDistance;
			float _TessellationFactor;
			float _SnowDisplacement;
			float _EnviroSnow;
			float _SnowSlopePower;
			float _SnowHeightBlending;
			float _MipDistanceBlending;
			float _WetnessBoost;
			float _HeightBlending;
			float _RainDistanceFade;
			float _PuddleIntensity;
			float _EnviroWetness;
			float _SnowTiling;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _RainFlowStrength;
			float _EnviroRainIntensity;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _PuddleCoverageNoise;
			float _RainFlowSmoothnessBoost;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			    float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			    float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			    float _TessPhongStrength;
			    float _TessValue;
			    float _TessMin;
			    float _TessMax;
			    float _TessEdgeLength;
			    float _TessMaxDisp;
			#endif
			CBUFFER_END

            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

        	#ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _SNOW_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap
			#include "EnviroInclude.hlsl"


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			void GetSplats( float4 in0, float4 in1, float4 in2, out float4 Out1, out float4 Out0 )
			{
				GetSplatsWeights(in0,in1,in2,Out0,Out1);
			}
			
			void GetUVS( float4 in0, float4 in1, float4 in2, float4 in3, float4 in4, float4 in5, float4 in6, float4 in7, float4 in8, float4 in9, float4 in10, float4 in11, float4 index, out float4 Out0, out float4 Out1, out float4 Out2, out float4 Out3 )
			{
				GetLayerUV(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,index,Out0,Out1,Out2,Out3);
			}
			
			void GetLayerSettings( float4 in0, float4 in1, float4 in2, float4 index, out float4 Out0 )
			{
				GetLayerValue(in0,in1,in2,index,Out0);
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SceneSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				//refraction SceneSelectionPass
                #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                    if (_EnableSSRefraction)
                    {
                        surfaceData.ior =                       surfaceDescription.RefractionIndex;
                        surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                        surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                        surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                        surfaceDescription.Alpha = 1.0;
                    }
                    else
                    {
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                        surfaceDescription.Alpha = 1.0;
                    }
                #else
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                #endif

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif

                #ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                    surfaceData.normalWS = float3(0, 1, 0);
                #endif

				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                    surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				#ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
                    float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				float3 normalTS = float3(0.0f, 0.0f, 1.0f);

	            

	            
                #if ASE_SRP_VERSION >=140008
                #ifdef DECAL_NORMAL_BLENDING
					normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(normalTS, fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;

                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                     }
                    #endif

                    GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
                #else
					GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;
        
                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                    }
                    #endif
                #endif
                #endif
               

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz );
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				bentNormalWS = surfaceData.normalWS;

                #if defined(DEBUG_DISPLAY)
                    if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                   {
                        surfaceData.metallic = 0;
                   }
                     ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                #endif

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

                #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                    surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                #endif
			}

			// Get Surface And BuiltinData
			void GetSurfaceAndBuiltinData(SceneSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                    LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);

				#ifdef _ALPHATEST_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
				#endif

				#ifdef _DEPTHOFFSET_ON
                    ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
				#endif

                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				#ifdef _DEPTHOFFSET_ON
                    builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

                #ifdef UNITY_VIRTUAL_TEXTURING
                    builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
                    builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
                    builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

                builtinData.emissiveColor = surfaceDescription.Emission;

                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification(inputMesh);
				float3 appendResult261 = (float3(_SnowDisplacement , _SnowDisplacement , _SnowDisplacement));
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float Snow_Amount174 = _EnviroSnow;
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float3 Snow_Displacement272 = ( ( appendResult261 * ase_worldNormal ) * ( Snow_Blending247 * Snow_Amount174 ) );
				#ifdef _SNOW_ON
				float3 staticSwitch279 = Snow_Displacement272;
				#else
				float3 staticSwitch279 = float3(0,0,0);
				#endif
				float3 DisplacementFinal282 = ( staticSwitch279 + float3(0,0,0) );
				
				float4 appendResult660 = (float4(cross( inputMesh.normalOS , float3(0,0,1) ) , -1.0));
				
				outputPackedVaryingsMeshToPS.ase_texcoord1.xy = inputMesh.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord1.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = DisplacementFinal282;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = appendResult660;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target2
			#elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target1
			#else
			#define SV_TARGET_DECAL SV_Target0
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						, out float4 outColor : SV_Target0
						#if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.positionRWS.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SceneSurfaceDescription surfaceDescription = (SceneSurfaceDescription)0;
				float2 uv_TerrainHolesTexture = packedInput.ase_texcoord1.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				float holeClipValue579 = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float Alpha1008 = holeClipValue579;
				
				surfaceDescription.Alpha = Alpha1008;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
			}
			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			Cull [_CullMode]
			ZWrite On

			Stencil
			{
				Ref [_StencilRefDepth]
				WriteMask [_StencilWriteMaskDepth]
				Comp Always
				Pass Replace
			}


			HLSLPROGRAM
			#pragma shader_feature_local_fragment _ _DISABLE_DECALS
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma shader_feature_local _ _DOUBLESIDED_ON
			#pragma shader_feature_local _ _ALPHATEST_ON
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 140011
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT

            #pragma multi_compile _ WRITE_NORMAL_BUFFER
            #pragma multi_compile_fragment _ WRITE_MSAA_DEPTH
            #pragma multi_compile _ WRITE_DECAL_BUFFER

			#pragma vertex Vert
			#pragma fragment Frag

            #define SHADERPASS SHADERPASS_DEPTH_ONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

            //#if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            //#define FRAG_INPUTS_ENABLE_STRIPPING
            //#endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
                #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
                #define RAYTRACING_SHADER_GRAPH_LOW
            #endif

            #ifndef SHADER_UNLIT
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			    #define ASE_NEED_CULLFACE 1
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif

            #ifndef DEBUG_DISPLAY
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif

            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif

            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ColorTint3;
			float4 _ColorTint2;
			float4 _ColorTint4;
			float4 _ColorTint5;
			float4 _ColorTint6;
			float4 _ColorTint7;
			float4 _ColorTint8;
			float4 _ColorTint9;
			float4 _ColorTint10;
			float4 _ColorTint11;
			float4 _HeightContrast0;
			float4 _HeightContrast1;
			float4 _HeightContrast2;
			float4 _DisplacementMod0;
			float4 _Occlusion2;
			float4 _PuddleColor;
			float4 _Occlusion1;
			float4 _Occlusion0;
			float4 _Metallic02;
			float4 _Metallic01;
			float4 _NormalScale00;
			float4 _NormalScale01;
			float4 _NormalScale02;
			float4 _Metallic00;
			float4 _ColorTint1;
			float4 _TerrainHolesTexture_ST;
			float4 _ColorTint0;
			float4 _LayerScaleOffset11;
			float4 _Smoothness02;
			float4 _Smoothness01;
			float4 _Smoothness00;
			float4 _DisplacementMod2;
			float4 _Control_ST;
			float4 _Control1_ST;
			float4 _Control2_ST;
			float4 _SamplingType0;
			float4 _SamplingType1;
			float4 _DisplacementMod1;
			float4 _LayerScaleOffset0;
			float4 _SamplingType2;
			float4 _LayerScaleOffset2;
			float4 _LayerScaleOffset3;
			float4 _LayerScaleOffset4;
			float4 _LayerScaleOffset5;
			float4 _LayerScaleOffset6;
			float4 _LayerScaleOffset7;
			float4 _LayerScaleOffset8;
			float4 _LayerScaleOffset9;
			float4 _LayerScaleOffset10;
			float4 _LayerScaleOffset1;
			float _SSSDistortion;
			float _SnowNormalScale;
			float _RainDropIntensity;
			float _SSSScale;
			float _TessellationMaxDistance;
			float _RainDropSpeed;
			float _SnowMetallic;
			float _SnowSmoothness;
			float _SSSIntensity;
			float _RainDropTiling;
			float _HeightBlendStrength;
			float _RainFlowIntensity;
			float _TessellationMinDistance;
			float _TessellationFactor;
			float _SnowDisplacement;
			float _EnviroSnow;
			float _SnowSlopePower;
			float _SnowHeightBlending;
			float _MipDistanceBlending;
			float _WetnessBoost;
			float _HeightBlending;
			float _RainDistanceFade;
			float _PuddleIntensity;
			float _EnviroWetness;
			float _SnowTiling;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _RainFlowStrength;
			float _EnviroRainIntensity;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _PuddleCoverageNoise;
			float _RainFlowSmoothnessBoost;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			    float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			    float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			    float _TessPhongStrength;
			    float _TessValue;
			    float _TessMin;
			    float _TessMax;
			    float _TessEdgeLength;
			    float _TessMaxDisp;
			#endif
			CBUFFER_END

            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Control1);
			SAMPLER(sampler_Control1);
			TEXTURE2D(_Control2);
			SAMPLER(sampler_Control2);
			TEXTURE2D_ARRAY(_NormalArray);
			SAMPLER(sampler_NormalArray);
			TEXTURE2D_ARRAY(_MaskArray);
			SAMPLER(sampler_MaskArray);
			TEXTURE2D(_WaveNormal);
			SAMPLER(sampler_WaveNormal);
			TEXTURE2D(_SnowNormal);
			SAMPLER(sampler_SnowNormal);
			TEXTURE2D(_SnowMask);
			SAMPLER(sampler_SnowMask);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

        	#ifdef HAVE_VFX_MODIFICATION
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_VFACE
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _TERRAIN_INSTANCED_PERPIXEL_NORMAL
			#pragma shader_feature_local _RAIN_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _HEIGHTBLEND_ON
			#pragma shader_feature_local _SPLATCOUNT__4 _SPLATCOUNT__8 _SPLATCOUNT__12
			#pragma multi_compile_local _QUALITY_FAST _QUALITY_BALANCE _QUALITY_QUALITY
			#pragma shader_feature_local _STOCHASTIC_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap
			#include "EnviroInclude.hlsl"


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			void GetSplats( float4 in0, float4 in1, float4 in2, out float4 Out1, out float4 Out0 )
			{
				GetSplatsWeights(in0,in1,in2,Out0,Out1);
			}
			
			void GetUVS( float4 in0, float4 in1, float4 in2, float4 in3, float4 in4, float4 in5, float4 in6, float4 in7, float4 in8, float4 in9, float4 in10, float4 in11, float4 index, out float4 Out0, out float4 Out1, out float4 Out2, out float4 Out3 )
			{
				GetLayerUV(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,index,Out0,Out1,Out2,Out3);
			}
			
			void GetLayerSettings( float4 in0, float4 in1, float4 in2, float4 index, out float4 Out0 )
			{
				GetLayerValue(in0,in1,in2,index,Out0);
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			void StochasticTiling( float2 UV, out float2 UV1, out float2 UV2, out float2 UV3, out float W1, out float W2, out float W3 )
			{
				float2 vertex1, vertex2, vertex3;
				// Scaling of the input
				float2 uv = UV * 3.464; // 2 * sqrt (3)
				// Skew input space into simplex triangle grid
				const float2x2 gridToSkewedGrid = float2x2( 1.0, 0.0, -0.57735027, 1.15470054 );
				float2 skewedCoord = mul( gridToSkewedGrid, uv );
				// Compute local triangle vertex IDs and local barycentric coordinates
				int2 baseId = int2( floor( skewedCoord ) );
				float3 temp = float3( frac( skewedCoord ), 0 );
				temp.z = 1.0 - temp.x - temp.y;
				if ( temp.z > 0.0 )
				{
					W1 = temp.z;
					W2 = temp.y;
					W3 = temp.x;
					vertex1 = baseId;
					vertex2 = baseId + int2( 0, 1 );
					vertex3 = baseId + int2( 1, 0 );
				}
				else
				{
					W1 = -temp.z;
					W2 = 1.0 - temp.y;
					W3 = 1.0 - temp.x;
					vertex1 = baseId + int2( 1, 1 );
					vertex2 = baseId + int2( 1, 0 );
					vertex3 = baseId + int2( 0, 1 );
				}
				UV1 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex1 ) ) * 43758.5453 );
				UV2 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex2 ) ) * 43758.5453 );
				UV3 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex3 ) ) * 43758.5453 );
				return;
			}
			
			float2 UnityGradientNoiseDir( float2 p )
			{
				p = fmod(p , 289);
				float x = fmod((34 * p.x + 1) * p.x , 289) + p.y;
				x = fmod( (34 * x + 1) * x , 289);
				x = frac( x / 41 ) * 2 - 1;
				return normalize( float2(x - floor(x + 0.5 ), abs( x ) - 0.5 ) );
			}
			
			float UnityGradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 ip = floor( p );
				float2 fp = frac( p );
				float d00 = dot( UnityGradientNoiseDir( ip ), fp );
				float d01 = dot( UnityGradientNoiseDir( ip + float2( 0, 1 ) ), fp - float2( 0, 1 ) );
				float d10 = dot( UnityGradientNoiseDir( ip + float2( 1, 0 ) ), fp - float2( 1, 0 ) );
				float d11 = dot( UnityGradientNoiseDir( ip + float2( 1, 1 ) ), fp - float2( 1, 1 ) );
				fp = fp * fp * fp * ( fp * ( fp * 6 - 15 ) + 10 );
				return lerp( lerp( d00, d01, fp.y ), lerp( d10, d11, fp.y ), fp.x ) + 0.5;
			}
			
			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
                #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                    if (_EnableSSRefraction)
                    {
                        surfaceData.ior =                       surfaceDescription.RefractionIndex;
                        surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                        surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                        surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                        surfaceDescription.Alpha = 1.0;
                    }
                    else
                    {
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                        surfaceDescription.Alpha = 1.0;
                    }
                #else
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                #endif

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif

                #ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                    surfaceData.normalWS = float3(0, 1, 0);
                #endif

				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                    surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				#ifdef _DOUBLESIDED_ON
				    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				    float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;

	            

	            
                #if ASE_SRP_VERSION >=140008
                #ifdef DECAL_NORMAL_BLENDING
					normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(normalTS, fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;

                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                     }
                    #endif

                    GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
                #else
					GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;

                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                    }
                    #endif
                #endif
                #endif
               

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz );
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				bentNormalWS = surfaceData.normalWS;

                #if defined(DEBUG_DISPLAY)
                    if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                    {
                        surfaceData.metallic = 0;
                    }
                     ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
                #endif

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

                #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                    surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                #endif
			}

			// Get Surface And BuiltinData
			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                    LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);

				#ifdef _ALPHATEST_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
				#endif

				#ifdef _DEPTHOFFSET_ON
                    ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
				#endif

                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				#ifdef _DEPTHOFFSET_ON
                    builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

                #ifdef UNITY_VIRTUAL_TEXTURING
                    builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
                    builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
                    builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

                builtinData.emissiveColor = surfaceDescription.Emission;

                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
			#endif

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification(inputMesh);
				float3 appendResult261 = (float3(_SnowDisplacement , _SnowDisplacement , _SnowDisplacement));
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float Snow_Amount174 = _EnviroSnow;
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float3 Snow_Displacement272 = ( ( appendResult261 * ase_worldNormal ) * ( Snow_Blending247 * Snow_Amount174 ) );
				#ifdef _SNOW_ON
				float3 staticSwitch279 = Snow_Displacement272;
				#else
				float3 staticSwitch279 = float3(0,0,0);
				#endif
				float3 DisplacementFinal282 = ( staticSwitch279 + float3(0,0,0) );
				
				float4 appendResult660 = (float4(cross( inputMesh.normalOS , float3(0,0,1) ) , -1.0));
				
				outputPackedVaryingsMeshToPS.ase_texcoord3.xy = inputMesh.ase_texcoord.xy;
				outputPackedVaryingsMeshToPS.ase_texcoord4 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord3.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = DisplacementFinal282;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = appendResult660;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.normalWS.xyz = normalWS;
				outputPackedVaryingsMeshToPS.tangentWS.xyzw = tangentWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target2
			#elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target1
			#else
			#define SV_TARGET_DECAL SV_Target0
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#if defined(SCENESELECTIONPASS) || defined(SCENEPICKINGPASS)
						, out float4 outColor : SV_Target0
						#else
							#ifdef WRITE_MSAA_DEPTH
							, out float4 depthColor : SV_Target0
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target1
								#endif
							#else
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target0
								#endif
							#endif

							#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
							, out float4 outDecalBuffer : SV_TARGET_DECAL
							#endif
						#endif

						#if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
						
					)
			{
			UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
			UNITY_SETUP_INSTANCE_ID(packedInput);

				float3 positionRWS = packedInput.positionRWS.xyz;
				float3 normalWS = packedInput.normalWS.xyz;
				float4 tangentWS = packedInput.tangentWS.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float localGetSplats43 = ( 0.0 );
				float2 uv_Control = packedInput.ase_texcoord3.xy * _Control_ST.xy + _Control_ST.zw;
				float4 SplatControl033 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch42 = SplatControl033;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch42 = SplatControl033;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch42 = SplatControl033;
				#else
				float4 staticSwitch42 = SplatControl033;
				#endif
				float4 in043 = staticSwitch42;
				float4 _Vector1 = float4(0,0,0,0);
				float2 uv_Control1 = packedInput.ase_texcoord3.xy * _Control1_ST.xy + _Control1_ST.zw;
				float4 SplatControl135 = SAMPLE_TEXTURE2D( _Control1, sampler_Control1, uv_Control1 );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch41 = _Vector1;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch41 = SplatControl135;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch41 = SplatControl135;
				#else
				float4 staticSwitch41 = _Vector1;
				#endif
				float4 in143 = staticSwitch41;
				float2 uv_Control2 = packedInput.ase_texcoord3.xy * _Control2_ST.xy + _Control2_ST.zw;
				float4 SplatControl234 = SAMPLE_TEXTURE2D( _Control2, sampler_Control2, uv_Control2 );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch40 = _Vector1;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch40 = _Vector1;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch40 = SplatControl234;
				#else
				float4 staticSwitch40 = _Vector1;
				#endif
				float4 in243 = staticSwitch40;
				float4 Out143 = float4( 0,0,0,0 );
				float4 Out043 = float4( 0,0,0,0 );
				{
				GetSplatsWeights(in043,in143,in243,Out043,Out143);
				}
				float4 SplatWeights198 = Out143;
				float4 temp_output_14_0_g1053 = SplatWeights198;
				float localGetLayerSettings894 = ( 0.0 );
				float4 in0894 = _SamplingType0;
				float4 in1894 = _SamplingType1;
				float4 in2894 = _SamplingType2;
				float4 SplatIndex44 = Out043;
				float4 index894 = SplatIndex44;
				float4 Out0894 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0894,in1894,in2894,index894,Out0894);
				}
				float4 samplingType895 = Out0894;
				float4 break898 = samplingType895;
				float2 appendResult69 = (float2(packedInput.ase_texcoord4.xyz.x , packedInput.ase_texcoord4.xyz.z));
				float localGetUVS58 = ( 0.0 );
				float4 in058 = _LayerScaleOffset0;
				float4 in158 = _LayerScaleOffset1;
				float4 in258 = _LayerScaleOffset2;
				float4 in358 = _LayerScaleOffset3;
				float4 in458 = _LayerScaleOffset4;
				float4 in558 = _LayerScaleOffset5;
				float4 in658 = _LayerScaleOffset6;
				float4 in758 = _LayerScaleOffset7;
				float4 in858 = _LayerScaleOffset8;
				float4 in958 = _LayerScaleOffset9;
				float4 in1058 = _LayerScaleOffset10;
				float4 in1158 = _LayerScaleOffset11;
				float4 index58 = SplatIndex44;
				float4 Out058 = float4( 0,0,0,0 );
				float4 Out158 = float4( 0,0,0,0 );
				float4 Out258 = float4( 0,0,0,0 );
				float4 Out358 = float4( 0,0,0,0 );
				{
				GetLayerUV(in058,in158,in258,in358,in458,in558,in658,in758,in858,in958,in1058,in1158,index58,Out058,Out158,Out258,Out358);
				}
				float4 break63 = Out058;
				float2 appendResult65 = (float2(break63.x , break63.y));
				float2 appendResult73 = (float2(break63.z , break63.w));
				float4 break86 = SplatIndex44;
				float3 appendResult93 = (float3(( ( appendResult69 * appendResult65 ) + appendResult73 ) , break86.x));
				float3 UV0100 = appendResult93;
				float2 temp_output_5_0_g1049 = UV0100.xy;
				float4 break391 = SplatIndex44;
				int temp_output_4_0_g1049 = (int)break391.x;
				float2 appendResult87 = (float2(packedInput.ase_texcoord4.xyz.x , packedInput.ase_texcoord4.xyz.z));
				float2 Mip101 = ( appendResult87 * ( 1.0 / max( 0.001 , _MipDistanceBlending ) ) );
				float2 temp_output_9_0_g1049 = Mip101;
				float2 temp_output_12_0_g1049 = ddx( temp_output_9_0_g1049 );
				float2 temp_output_13_0_g1049 = ddy( temp_output_9_0_g1049 );
				float4 tex2DArrayNode3_g1049 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1049,(float)temp_output_4_0_g1049, temp_output_12_0_g1049, temp_output_13_0_g1049 );
				float localStochasticTiling190_g1050 = ( 0.0 );
				float2 Input_UV317_g1050 = temp_output_5_0_g1049;
				float2 UV190_g1050 = Input_UV317_g1050;
				float2 UV1190_g1050 = float2( 0,0 );
				float2 UV2190_g1050 = float2( 0,0 );
				float2 UV3190_g1050 = float2( 0,0 );
				float W1190_g1050 = 0.0;
				float W2190_g1050 = 0.0;
				float W3190_g1050 = 0.0;
				StochasticTiling( UV190_g1050 , UV1190_g1050 , UV2190_g1050 , UV3190_g1050 , W1190_g1050 , W2190_g1050 , W3190_g1050 );
				float Input_Index330_g1050 = (float)temp_output_4_0_g1049;
				float2 temp_output_358_0_g1050 = temp_output_12_0_g1049;
				float2 temp_output_359_0_g1050 = temp_output_13_0_g1049;
				float4 Output_2DArray152_g1050 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W1190_g1050 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W2190_g1050 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W3190_g1050 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1049 = Output_2DArray152_g1050;
				#else
				float4 staticSwitch7_g1049 = tex2DArrayNode3_g1049;
				#endif
				float4 ifLocalVar17_g1049 = 0;
				UNITY_BRANCH 
				if( break898.x > 0.0 )
				ifLocalVar17_g1049 = staticSwitch7_g1049;
				else if( break898.x == 0.0 )
				ifLocalVar17_g1049 = tex2DArrayNode3_g1049;
				float localGetLayerSettings368 = ( 0.0 );
				float4 in0368 = _NormalScale00;
				float4 in1368 = _NormalScale01;
				float4 in2368 = _NormalScale02;
				float4 index368 = SplatIndex44;
				float4 Out0368 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0368,in1368,in2368,index368,Out0368);
				}
				float4 NormalScales375 = Out0368;
				float4 break401 = NormalScales375;
				float3 unpack417 = UnpackNormalScale( ifLocalVar17_g1049, break401.x );
				unpack417.z = lerp( 1, unpack417.z, saturate(break401.x) );
				#if defined( _QUALITY_FAST )
				float3 staticSwitch433 = unpack417;
				#elif defined( _QUALITY_BALANCE )
				float3 staticSwitch433 = unpack417;
				#elif defined( _QUALITY_QUALITY )
				float3 staticSwitch433 = unpack417;
				#else
				float3 staticSwitch433 = unpack417;
				#endif
				float4 temp_output_18_0_g1053 = float4( staticSwitch433 , 0.0 );
				float4 break62 = Out158;
				float2 appendResult66 = (float2(break62.x , break62.y));
				float2 appendResult72 = (float2(break62.z , break62.w));
				float3 appendResult90 = (float3(( ( appendResult69 * appendResult66 ) + appendResult72 ) , break86.y));
				float3 UV197 = appendResult90;
				float2 temp_output_5_0_g1045 = UV197.xy;
				int temp_output_4_0_g1045 = (int)break391.y;
				float2 temp_output_9_0_g1045 = Mip101;
				float2 temp_output_12_0_g1045 = ddx( temp_output_9_0_g1045 );
				float2 temp_output_13_0_g1045 = ddy( temp_output_9_0_g1045 );
				float4 tex2DArrayNode3_g1045 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1045,(float)temp_output_4_0_g1045, temp_output_12_0_g1045, temp_output_13_0_g1045 );
				float localStochasticTiling190_g1046 = ( 0.0 );
				float2 Input_UV317_g1046 = temp_output_5_0_g1045;
				float2 UV190_g1046 = Input_UV317_g1046;
				float2 UV1190_g1046 = float2( 0,0 );
				float2 UV2190_g1046 = float2( 0,0 );
				float2 UV3190_g1046 = float2( 0,0 );
				float W1190_g1046 = 0.0;
				float W2190_g1046 = 0.0;
				float W3190_g1046 = 0.0;
				StochasticTiling( UV190_g1046 , UV1190_g1046 , UV2190_g1046 , UV3190_g1046 , W1190_g1046 , W2190_g1046 , W3190_g1046 );
				float Input_Index330_g1046 = (float)temp_output_4_0_g1045;
				float2 temp_output_358_0_g1046 = temp_output_12_0_g1045;
				float2 temp_output_359_0_g1046 = temp_output_13_0_g1045;
				float4 Output_2DArray152_g1046 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W1190_g1046 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W2190_g1046 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W3190_g1046 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1045 = Output_2DArray152_g1046;
				#else
				float4 staticSwitch7_g1045 = tex2DArrayNode3_g1045;
				#endif
				float4 ifLocalVar17_g1045 = 0;
				UNITY_BRANCH 
				if( break898.y > 0.0 )
				ifLocalVar17_g1045 = staticSwitch7_g1045;
				else if( break898.y == 0.0 )
				ifLocalVar17_g1045 = tex2DArrayNode3_g1045;
				float3 unpack416 = UnpackNormalScale( ifLocalVar17_g1045, break401.y );
				unpack416.z = lerp( 1, unpack416.z, saturate(break401.y) );
				#if defined( _QUALITY_FAST )
				float3 staticSwitch434 = unpack416;
				#elif defined( _QUALITY_BALANCE )
				float3 staticSwitch434 = unpack416;
				#elif defined( _QUALITY_QUALITY )
				float3 staticSwitch434 = unpack416;
				#else
				float3 staticSwitch434 = unpack416;
				#endif
				float4 temp_output_22_0_g1053 = float4( staticSwitch434 , 0.0 );
				float4 _Vector3 = float4(0,0,0,0);
				float4 break60 = Out258;
				float2 appendResult67 = (float2(break60.x , break60.y));
				float2 appendResult79 = (float2(break60.z , break60.w));
				float3 appendResult91 = (float3(( ( appendResult69 * appendResult67 ) + appendResult79 ) , break86.z));
				float3 UV298 = appendResult91;
				float2 temp_output_5_0_g1051 = UV298.xy;
				int temp_output_4_0_g1051 = (int)break391.z;
				float2 temp_output_9_0_g1051 = Mip101;
				float2 temp_output_12_0_g1051 = ddx( temp_output_9_0_g1051 );
				float2 temp_output_13_0_g1051 = ddy( temp_output_9_0_g1051 );
				float4 tex2DArrayNode3_g1051 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1051,(float)temp_output_4_0_g1051, temp_output_12_0_g1051, temp_output_13_0_g1051 );
				float localStochasticTiling190_g1052 = ( 0.0 );
				float2 Input_UV317_g1052 = temp_output_5_0_g1051;
				float2 UV190_g1052 = Input_UV317_g1052;
				float2 UV1190_g1052 = float2( 0,0 );
				float2 UV2190_g1052 = float2( 0,0 );
				float2 UV3190_g1052 = float2( 0,0 );
				float W1190_g1052 = 0.0;
				float W2190_g1052 = 0.0;
				float W3190_g1052 = 0.0;
				StochasticTiling( UV190_g1052 , UV1190_g1052 , UV2190_g1052 , UV3190_g1052 , W1190_g1052 , W2190_g1052 , W3190_g1052 );
				float Input_Index330_g1052 = (float)temp_output_4_0_g1051;
				float2 temp_output_358_0_g1052 = temp_output_12_0_g1051;
				float2 temp_output_359_0_g1052 = temp_output_13_0_g1051;
				float4 Output_2DArray152_g1052 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W1190_g1052 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W2190_g1052 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W3190_g1052 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1051 = Output_2DArray152_g1052;
				#else
				float4 staticSwitch7_g1051 = tex2DArrayNode3_g1051;
				#endif
				float4 ifLocalVar17_g1051 = 0;
				UNITY_BRANCH 
				if( break898.z > 0.0 )
				ifLocalVar17_g1051 = staticSwitch7_g1051;
				else if( break898.z == 0.0 )
				ifLocalVar17_g1051 = tex2DArrayNode3_g1051;
				float3 unpack414 = UnpackNormalScale( ifLocalVar17_g1051, break401.z );
				unpack414.z = lerp( 1, unpack414.z, saturate(break401.z) );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch435 = _Vector3;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch435 = float4( unpack414 , 0.0 );
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch435 = float4( unpack414 , 0.0 );
				#else
				float4 staticSwitch435 = _Vector3;
				#endif
				float4 temp_output_23_0_g1053 = staticSwitch435;
				float4 break61 = Out358;
				float2 appendResult68 = (float2(break61.x , break61.y));
				float2 appendResult78 = (float2(break61.z , break61.w));
				float3 appendResult92 = (float3(( ( appendResult69 * appendResult68 ) + appendResult78 ) , break86.w));
				float3 UV399 = appendResult92;
				float2 temp_output_5_0_g1047 = UV399.xy;
				int temp_output_4_0_g1047 = (int)break391.w;
				float2 temp_output_9_0_g1047 = Mip101;
				float2 temp_output_12_0_g1047 = ddx( temp_output_9_0_g1047 );
				float2 temp_output_13_0_g1047 = ddy( temp_output_9_0_g1047 );
				float4 tex2DArrayNode3_g1047 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1047,(float)temp_output_4_0_g1047, temp_output_12_0_g1047, temp_output_13_0_g1047 );
				float localStochasticTiling190_g1048 = ( 0.0 );
				float2 Input_UV317_g1048 = temp_output_5_0_g1047;
				float2 UV190_g1048 = Input_UV317_g1048;
				float2 UV1190_g1048 = float2( 0,0 );
				float2 UV2190_g1048 = float2( 0,0 );
				float2 UV3190_g1048 = float2( 0,0 );
				float W1190_g1048 = 0.0;
				float W2190_g1048 = 0.0;
				float W3190_g1048 = 0.0;
				StochasticTiling( UV190_g1048 , UV1190_g1048 , UV2190_g1048 , UV3190_g1048 , W1190_g1048 , W2190_g1048 , W3190_g1048 );
				float Input_Index330_g1048 = (float)temp_output_4_0_g1047;
				float2 temp_output_358_0_g1048 = temp_output_12_0_g1047;
				float2 temp_output_359_0_g1048 = temp_output_13_0_g1047;
				float4 Output_2DArray152_g1048 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W1190_g1048 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W2190_g1048 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W3190_g1048 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1047 = Output_2DArray152_g1048;
				#else
				float4 staticSwitch7_g1047 = tex2DArrayNode3_g1047;
				#endif
				float4 ifLocalVar17_g1047 = 0;
				UNITY_BRANCH 
				if( break898.w > 0.0 )
				ifLocalVar17_g1047 = staticSwitch7_g1047;
				else if( break898.w == 0.0 )
				ifLocalVar17_g1047 = tex2DArrayNode3_g1047;
				float3 unpack415 = UnpackNormalScale( ifLocalVar17_g1047, break401.w );
				unpack415.z = lerp( 1, unpack415.z, saturate(break401.w) );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch436 = _Vector3;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch436 = _Vector3;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch436 = float4( unpack415 , 0.0 );
				#else
				float4 staticSwitch436 = _Vector3;
				#endif
				float4 temp_output_24_0_g1053 = staticSwitch436;
				float4 weightedBlendVar30_g1053 = temp_output_14_0_g1053;
				float4 weightedBlend30_g1053 = ( weightedBlendVar30_g1053.x*temp_output_18_0_g1053 + weightedBlendVar30_g1053.y*temp_output_22_0_g1053 + weightedBlendVar30_g1053.z*temp_output_23_0_g1053 + weightedBlendVar30_g1053.w*temp_output_24_0_g1053 );
				float4 break899 = samplingType895;
				float2 temp_output_5_0_g11 = UV0100.xy;
				float4 break102 = SplatIndex44;
				int temp_output_4_0_g11 = (int)break102.x;
				float2 temp_output_9_0_g11 = Mip101;
				float2 temp_output_12_0_g11 = ddx( temp_output_9_0_g11 );
				float2 temp_output_13_0_g11 = ddy( temp_output_9_0_g11 );
				float4 tex2DArrayNode3_g11 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g11,(float)temp_output_4_0_g11, temp_output_12_0_g11, temp_output_13_0_g11 );
				float localStochasticTiling190_g12 = ( 0.0 );
				float2 Input_UV317_g12 = temp_output_5_0_g11;
				float2 UV190_g12 = Input_UV317_g12;
				float2 UV1190_g12 = float2( 0,0 );
				float2 UV2190_g12 = float2( 0,0 );
				float2 UV3190_g12 = float2( 0,0 );
				float W1190_g12 = 0.0;
				float W2190_g12 = 0.0;
				float W3190_g12 = 0.0;
				StochasticTiling( UV190_g12 , UV1190_g12 , UV2190_g12 , UV3190_g12 , W1190_g12 , W2190_g12 , W3190_g12 );
				float Input_Index330_g12 = (float)temp_output_4_0_g11;
				float2 temp_output_358_0_g12 = temp_output_12_0_g11;
				float2 temp_output_359_0_g12 = temp_output_13_0_g11;
				float4 Output_2DArray152_g12 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W1190_g12 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W2190_g12 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W3190_g12 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g11 = Output_2DArray152_g12;
				#else
				float4 staticSwitch7_g11 = tex2DArrayNode3_g11;
				#endif
				float4 ifLocalVar17_g11 = 0;
				UNITY_BRANCH 
				if( break899.x > 0.0 )
				ifLocalVar17_g11 = staticSwitch7_g11;
				else if( break899.x == 0.0 )
				ifLocalVar17_g11 = tex2DArrayNode3_g11;
				float4 break116 = ifLocalVar17_g11;
				float HeightMap0119 = break116.b;
				float localGetLayerSettings820 = ( 0.0 );
				float4 in0820 = _HeightContrast0;
				float4 in1820 = _HeightContrast1;
				float4 in2820 = _HeightContrast2;
				float4 index820 = SplatIndex44;
				float4 Out0820 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0820,in1820,in2820,index820,Out0820);
				}
				float4 HeightContrast824 = Out0820;
				float4 break834 = HeightContrast824;
				float temp_output_846_0 = ( HeightMap0119 * break834.x );
				#if defined( _QUALITY_FAST )
				float staticSwitch158 = temp_output_846_0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch158 = temp_output_846_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch158 = temp_output_846_0;
				#else
				float staticSwitch158 = temp_output_846_0;
				#endif
				float2 temp_output_5_0_g9 = UV197.xy;
				int temp_output_4_0_g9 = (int)break102.y;
				float2 temp_output_9_0_g9 = Mip101;
				float2 temp_output_12_0_g9 = ddx( temp_output_9_0_g9 );
				float2 temp_output_13_0_g9 = ddy( temp_output_9_0_g9 );
				float4 tex2DArrayNode3_g9 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g9,(float)temp_output_4_0_g9, temp_output_12_0_g9, temp_output_13_0_g9 );
				float localStochasticTiling190_g10 = ( 0.0 );
				float2 Input_UV317_g10 = temp_output_5_0_g9;
				float2 UV190_g10 = Input_UV317_g10;
				float2 UV1190_g10 = float2( 0,0 );
				float2 UV2190_g10 = float2( 0,0 );
				float2 UV3190_g10 = float2( 0,0 );
				float W1190_g10 = 0.0;
				float W2190_g10 = 0.0;
				float W3190_g10 = 0.0;
				StochasticTiling( UV190_g10 , UV1190_g10 , UV2190_g10 , UV3190_g10 , W1190_g10 , W2190_g10 , W3190_g10 );
				float Input_Index330_g10 = (float)temp_output_4_0_g9;
				float2 temp_output_358_0_g10 = temp_output_12_0_g9;
				float2 temp_output_359_0_g10 = temp_output_13_0_g9;
				float4 Output_2DArray152_g10 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W1190_g10 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W2190_g10 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W3190_g10 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g9 = Output_2DArray152_g10;
				#else
				float4 staticSwitch7_g9 = tex2DArrayNode3_g9;
				#endif
				float4 ifLocalVar17_g9 = 0;
				UNITY_BRANCH 
				if( break899.y > 0.0 )
				ifLocalVar17_g9 = staticSwitch7_g9;
				else if( break899.y == 0.0 )
				ifLocalVar17_g9 = tex2DArrayNode3_g9;
				float4 break115 = ifLocalVar17_g9;
				float HeightMap1118 = break115.b;
				float temp_output_847_0 = ( HeightMap1118 * break834.y );
				#if defined( _QUALITY_FAST )
				float staticSwitch159 = temp_output_847_0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch159 = temp_output_847_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch159 = temp_output_847_0;
				#else
				float staticSwitch159 = temp_output_847_0;
				#endif
				float2 temp_output_5_0_g7 = UV298.xy;
				int temp_output_4_0_g7 = (int)break102.z;
				float2 temp_output_9_0_g7 = Mip101;
				float2 temp_output_12_0_g7 = ddx( temp_output_9_0_g7 );
				float2 temp_output_13_0_g7 = ddy( temp_output_9_0_g7 );
				float4 tex2DArrayNode3_g7 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g7,(float)temp_output_4_0_g7, temp_output_12_0_g7, temp_output_13_0_g7 );
				float localStochasticTiling190_g8 = ( 0.0 );
				float2 Input_UV317_g8 = temp_output_5_0_g7;
				float2 UV190_g8 = Input_UV317_g8;
				float2 UV1190_g8 = float2( 0,0 );
				float2 UV2190_g8 = float2( 0,0 );
				float2 UV3190_g8 = float2( 0,0 );
				float W1190_g8 = 0.0;
				float W2190_g8 = 0.0;
				float W3190_g8 = 0.0;
				StochasticTiling( UV190_g8 , UV1190_g8 , UV2190_g8 , UV3190_g8 , W1190_g8 , W2190_g8 , W3190_g8 );
				float Input_Index330_g8 = (float)temp_output_4_0_g7;
				float2 temp_output_358_0_g8 = temp_output_12_0_g7;
				float2 temp_output_359_0_g8 = temp_output_13_0_g7;
				float4 Output_2DArray152_g8 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W1190_g8 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W2190_g8 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W3190_g8 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g7 = Output_2DArray152_g8;
				#else
				float4 staticSwitch7_g7 = tex2DArrayNode3_g7;
				#endif
				float4 ifLocalVar17_g7 = 0;
				UNITY_BRANCH 
				if( break899.z > 0.0 )
				ifLocalVar17_g7 = staticSwitch7_g7;
				else if( break899.z == 0.0 )
				ifLocalVar17_g7 = tex2DArrayNode3_g7;
				float4 break114 = ifLocalVar17_g7;
				float HeightMap2120 = break114.b;
				float temp_output_848_0 = ( HeightMap2120 * break834.z );
				#if defined( _QUALITY_FAST )
				float staticSwitch161 = 0.0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch161 = temp_output_848_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch161 = temp_output_848_0;
				#else
				float staticSwitch161 = 0.0;
				#endif
				float2 temp_output_5_0_g1 = UV399.xy;
				int temp_output_4_0_g1 = (int)break102.w;
				float2 temp_output_9_0_g1 = Mip101;
				float2 temp_output_12_0_g1 = ddx( temp_output_9_0_g1 );
				float2 temp_output_13_0_g1 = ddy( temp_output_9_0_g1 );
				float4 tex2DArrayNode3_g1 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g1,(float)temp_output_4_0_g1, temp_output_12_0_g1, temp_output_13_0_g1 );
				float localStochasticTiling190_g6 = ( 0.0 );
				float2 Input_UV317_g6 = temp_output_5_0_g1;
				float2 UV190_g6 = Input_UV317_g6;
				float2 UV1190_g6 = float2( 0,0 );
				float2 UV2190_g6 = float2( 0,0 );
				float2 UV3190_g6 = float2( 0,0 );
				float W1190_g6 = 0.0;
				float W2190_g6 = 0.0;
				float W3190_g6 = 0.0;
				StochasticTiling( UV190_g6 , UV1190_g6 , UV2190_g6 , UV3190_g6 , W1190_g6 , W2190_g6 , W3190_g6 );
				float Input_Index330_g6 = (float)temp_output_4_0_g1;
				float2 temp_output_358_0_g6 = temp_output_12_0_g1;
				float2 temp_output_359_0_g6 = temp_output_13_0_g1;
				float4 Output_2DArray152_g6 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W1190_g6 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W2190_g6 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W3190_g6 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1 = Output_2DArray152_g6;
				#else
				float4 staticSwitch7_g1 = tex2DArrayNode3_g1;
				#endif
				float4 ifLocalVar17_g1 = 0;
				UNITY_BRANCH 
				if( break899.w > 0.0 )
				ifLocalVar17_g1 = staticSwitch7_g1;
				else if( break899.w == 0.0 )
				ifLocalVar17_g1 = tex2DArrayNode3_g1;
				float4 break113 = ifLocalVar17_g1;
				float HeightMap3117 = break113.b;
				#if defined( _QUALITY_FAST )
				float staticSwitch160 = 0.0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch160 = 0.0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch160 = ( HeightMap3117 * break834.w );
				#else
				float staticSwitch160 = 0.0;
				#endif
				float4 appendResult164 = (float4(staticSwitch158 , staticSwitch159 , staticSwitch161 , staticSwitch160));
				float4 HeightRawCombined0199 = saturate( pow( appendResult164 , 0.5 ) );
				float4 break13_g1053 = HeightRawCombined0199;
				float4 break15_g1053 = temp_output_14_0_g1053;
				float temp_output_53_0_g1053 = ( break13_g1053.x + break15_g1053.x );
				float temp_output_54_0_g1053 = ( break13_g1053.y + break15_g1053.y );
				float temp_output_55_0_g1053 = ( break13_g1053.z + break15_g1053.z );
				float temp_output_56_0_g1053 = ( break13_g1053.w + break15_g1053.w );
				float HeightBlending854 = _HeightBlendStrength;
				float temp_output_79_0_g1053 = ( max( max( max( temp_output_53_0_g1053 , temp_output_54_0_g1053 ) , temp_output_55_0_g1053 ) , temp_output_56_0_g1053 ) - HeightBlending854 );
				float temp_output_63_0_g1053 = max( ( temp_output_53_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_67_0_g1053 = max( ( temp_output_54_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_71_0_g1053 = max( ( temp_output_55_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_73_0_g1053 = max( ( temp_output_56_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float Blending197 = _HeightBlending;
				float4 lerpResult78_g1053 = lerp( weightedBlend30_g1053 , ( ( ( temp_output_18_0_g1053 * temp_output_63_0_g1053 ) + ( temp_output_22_0_g1053 * temp_output_67_0_g1053 ) + ( temp_output_23_0_g1053 * temp_output_71_0_g1053 ) + ( temp_output_24_0_g1053 * temp_output_73_0_g1053 ) ) / ( temp_output_63_0_g1053 + temp_output_67_0_g1053 + temp_output_71_0_g1053 + temp_output_73_0_g1053 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1053 = lerpResult78_g1053;
				#else
				float4 staticSwitch77_g1053 = weightedBlend30_g1053;
				#endif
				float4 Normal0450 = staticSwitch77_g1053;
				float temp_output_395_0 = ( _TimeParameters.x * 0.05 );
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float2 appendResult379 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 temp_output_397_0 = ( appendResult379 * _PuddleWaveTiling );
				float2 panner408 = ( temp_output_395_0 * float2( 1,0 ) + temp_output_397_0);
				float4 appendResult179 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise195 = SimpleNoise( appendResult179.xy*_PuddleCoverageNoise );
				simpleNoise195 = simpleNoise195*2 - 1;
				float Snow_Amount174 = _EnviroSnow;
				float Wetness228 = _EnviroWetness;
				#ifdef _PUDDLES_ON
				float staticSwitch258 = saturate( ( ( pow( ( normalWS.y - 0.99 ) , 0.4 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise195 ) ) * saturate( ( 2.0 - Snow_Amount174 ) ) ) * Wetness228 ) ) * 8.0 ) );
				#else
				float staticSwitch258 = 0.0;
				#endif
				float Puddle_Mask264 = staticSwitch258;
				float temp_output_406_0 = ( Puddle_Mask264 * ( _PuddleWaveIntensity * Wetness228 ) );
				float3 unpack420 = UnpackNormalScale( SAMPLE_TEXTURE2D( _WaveNormal, sampler_WaveNormal, panner408 ), temp_output_406_0 );
				unpack420.z = lerp( 1, unpack420.z, saturate(temp_output_406_0) );
				float2 panner407 = ( temp_output_395_0 * float2( 0,1 ) + temp_output_397_0);
				float3 unpack419 = UnpackNormalScale( SAMPLE_TEXTURE2D( _WaveNormal, sampler_WaveNormal, panner407 ), temp_output_406_0 );
				unpack419.z = lerp( 1, unpack419.z, saturate(temp_output_406_0) );
				float3 Puddle447 = BlendNormal( unpack420 , unpack419 );
				float4 lerpResult457 = lerp( Normal0450 , float4( Puddle447 , 0.0 ) , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float4 staticSwitch462 = lerpResult457;
				#else
				float4 staticSwitch462 = Normal0450;
				#endif
				float Rain_Intensity303 = _EnviroRainIntensity;
				float temp_output_325_0 = (1.0 + (( _RainFlowStrength * Rain_Intensity303 ) - 0.0) * (-1.0 - 1.0) / (1.0 - 0.0));
				float temp_output_306_0 = ( _TimeParameters.x * 0.05 );
				float4 transform287 = mul(GetObjectToWorldMatrix(),float4( packedInput.ase_texcoord4.xyz , 0.0 ));
				transform287.xyz = GetAbsolutePositionWS((transform287).xyz);
				float2 appendResult298 = (float2(( transform287.z * 0.7 ) , ( transform287.y * 0.2 )));
				float2 panner313 = ( temp_output_306_0 * float2( 0,1 ) + ( appendResult298 * _RainFlowTiling ));
				float2 texCoord285 = packedInput.ase_texcoord3.xy * float2( 10,10 ) + float2( 0,0 );
				float gradientNoise289 = UnityGradientNoise(texCoord285,_RainFlowDistortionScale);
				gradientNoise289 = gradientNoise289*0.5 + 0.5;
				float Distortion307 = ( gradientNoise289 * _RainFlowDistortionStrenght );
				float simpleNoise324 = SimpleNoise( ( panner313 + Distortion307 )*100.0 );
				simpleNoise324 = simpleNoise324*2 - 1;
				float smoothstepResult332 = smoothstep( temp_output_325_0 , 1.0 , simpleNoise324);
				float temp_output_335_0 = ( ( ( normalWS.y - 0.95 ) * -1.0 ) * _RainFlowIntensity );
				float3 temp_cast_56 = (0.3).xxx;
				float3 break337 = ( abs( normalWS ) - temp_cast_56 );
				float lerpResult342 = lerp( 0.0 , ( smoothstepResult332 * temp_output_335_0 ) , break337.x);
				float4 transform286 = mul(GetObjectToWorldMatrix(),float4( packedInput.ase_texcoord4.xyz , 0.0 ));
				transform286.xyz = GetAbsolutePositionWS((transform286).xyz);
				float2 appendResult299 = (float2(( transform286.x * 0.7 ) , ( transform286.y * 0.2 )));
				float2 panner312 = ( temp_output_306_0 * float2( 0,1 ) + ( appendResult299 * _RainFlowTiling ));
				float simpleNoise328 = SimpleNoise( ( panner312 + Distortion307 )*100.0 );
				simpleNoise328 = simpleNoise328*2 - 1;
				float smoothstepResult333 = smoothstep( temp_output_325_0 , 1.0 , simpleNoise328);
				float lerpResult341 = lerp( 0.0 , ( smoothstepResult333 * temp_output_335_0 ) , break337.z);
				float Rain_Distance_Fade340 = ( 1.0 - sqrt( saturate( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _RainDistanceFade ) ) ) );
				float temp_output_366_0 = saturate( ( ( lerpResult342 + lerpResult341 ) * Rain_Distance_Fade340 ) );
				float temp_output_373_0 = ddx( temp_output_366_0 );
				float temp_output_384_0 = ddy( temp_output_366_0 );
				float3 appendResult445 = (float3(temp_output_373_0 , temp_output_384_0 , sqrt( ( ( 1.0 - ( temp_output_373_0 * temp_output_373_0 ) ) - ( temp_output_384_0 * temp_output_384_0 ) ) )));
				float3 normalizeResult449 = normalize( appendResult445 );
				float3 RainFlow453 = normalizeResult449;
				float localRainRipples1_g1054 = ( 0.0 );
				float2 appendResult426 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 UV1_g1054 = ( appendResult426 * _RainDropTiling );
				float AngleOffset1_g1054 = 5.0;
				float lerpResult428 = lerp( 64.0 , 12.0 , Puddle_Mask264);
				float CellDensity1_g1054 = round( lerpResult428 );
				float Time1_g1054 = ( _TimeParameters.x * _RainDropSpeed );
				float temp_output_358_0 = ( _RainDropIntensity * 1.5 );
				float lerpResult365 = lerp( _RainDropIntensity , temp_output_358_0 , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float staticSwitch372 = lerpResult365;
				#else
				float staticSwitch372 = temp_output_358_0;
				#endif
				float switchResult422 = (((isFrontFace>0)?(( ( ( normalWS.y - 0.7 ) * ( staticSwitch372 * Rain_Intensity303 ) ) * Rain_Distance_Fade340 )):(0.0)));
				float Strength1_g1054 = max( 0.0 , switchResult422 );
				float3 normal1_g1054 = float3( 0,0,0 );
				float Out1_g1054 = 0.0;
				float lerpResult440 = lerp( 5.0 , 8.0 , Puddle_Mask264);
				float pow1_g1054 = lerpResult440;
				float lerpResult439 = lerp( 1.0 , 0.0 , Puddle_Mask264);
				float sin1_g1054 = lerpResult439;
				{
				Rain(UV1_g1054,AngleOffset1_g1054,CellDensity1_g1054,Time1_g1054,Strength1_g1054,pow1_g1054,sin1_g1054,Out1_g1054,normal1_g1054);
				}
				float3 Rain_Drop452 = normal1_g1054;
				#ifdef _RAIN_ON
				float4 staticSwitch468 = float4( BlendNormal( staticSwitch462.xyz , BlendNormal( RainFlow453 , Rain_Drop452 ) ) , 0.0 );
				#else
				float4 staticSwitch468 = staticSwitch462;
				#endif
				float2 temp_cast_59 = (_SnowTiling).xx;
				float2 texCoord232 = packedInput.ase_texcoord3.xy * temp_cast_59 + float2( 0,0 );
				float2 temp_output_5_0_g1055 = texCoord232;
				float localStochasticTiling2_g1056 = ( 0.0 );
				float2 Input_UV145_g1056 = temp_output_5_0_g1055;
				float2 UV2_g1056 = Input_UV145_g1056;
				float2 UV12_g1056 = float2( 0,0 );
				float2 UV22_g1056 = float2( 0,0 );
				float2 UV32_g1056 = float2( 0,0 );
				float W12_g1056 = 0.0;
				float W22_g1056 = 0.0;
				float W32_g1056 = 0.0;
				StochasticTiling( UV2_g1056 , UV12_g1056 , UV22_g1056 , UV32_g1056 , W12_g1056 , W22_g1056 , W32_g1056 );
				float2 temp_output_10_0_g1056 = ddx( Input_UV145_g1056 );
				float2 temp_output_12_0_g1056 = ddy( Input_UV145_g1056 );
				float4 Output_2D293_g1056 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV12_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W12_g1056 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV22_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W22_g1056 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV32_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W32_g1056 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1055 = Output_2D293_g1056;
				#else
				float4 staticSwitch7_g1055 = SAMPLE_TEXTURE2D( _SnowNormal, sampler_SnowNormal, temp_output_5_0_g1055 );
				#endif
				float3 unpack463 = UnpackNormalScale( staticSwitch7_g1055, _SnowNormalScale );
				unpack463.z = lerp( 1, unpack463.z, saturate(_SnowNormalScale) );
				float3 Snow_Normal465 = unpack463;
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( normalWS );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( packedInput.ase_texcoord4.xyz.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( packedInput.ase_texcoord4.xyz.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float4 lerpResult470 = lerp( staticSwitch468 , float4( Snow_Normal465 , 0.0 ) , Snow_Blending247);
				#ifdef _SNOW_ON
				float4 staticSwitch471 = lerpResult470;
				#else
				float4 staticSwitch471 = staticSwitch468;
				#endif
				float4 Normal_Final472 = staticSwitch471;
				float4 break668 = Normal_Final472;
				float3 appendResult671 = (float3(break668.x , break668.y , ( break668.z + 0.001 )));
				#ifdef _TERRAIN_INSTANCED_PERPIXEL_NORMAL
				float3 staticSwitch665 = appendResult671;
				#else
				float3 staticSwitch665 = appendResult671;
				#endif
				
				float4 temp_output_14_0_g1042 = SplatWeights198;
				float localGetLayerSettings163 = ( 0.0 );
				float4 in0163 = _Metallic00;
				float4 in1163 = _Metallic01;
				float4 in2163 = _Metallic02;
				float4 index163 = SplatIndex44;
				float4 Out0163 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0163,in1163,in2163,index163,Out0163);
				}
				float4 Metallic167 = Out0163;
				float4 break177 = Metallic167;
				float localGetLayerSettings728 = ( 0.0 );
				float4 in0728 = _Occlusion0;
				float4 in1728 = _Occlusion1;
				float4 in2728 = _Occlusion2;
				float4 index728 = SplatIndex44;
				float4 Out0728 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0728,in1728,in2728,index728,Out0728);
				}
				float4 Occlusion729 = Out0728;
				float4 break762 = Occlusion729;
				float localGetLayerSettings977 = ( 0.0 );
				float4 in0977 = _DisplacementMod0;
				float4 in1977 = _DisplacementMod1;
				float4 in2977 = _DisplacementMod2;
				float4 index977 = SplatIndex44;
				float4 Out0977 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0977,in1977,in2977,index977,Out0977);
				}
				float4 displacementModifier978 = Out0977;
				float4 break982 = displacementModifier978;
				float localGetLayerSettings162 = ( 0.0 );
				float4 in0162 = _Smoothness00;
				float4 in1162 = _Smoothness01;
				float4 in2162 = _Smoothness02;
				float4 index162 = SplatIndex44;
				float4 Out0162 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0162,in1162,in2162,index162,Out0162);
				}
				float4 Smoothness166 = Out0162;
				float4 break178 = Smoothness166;
				float4 appendResult205 = (float4(( break116.r + break177.x ) , ( break116.g + break762.x ) , ( HeightMap0119 * break982.x ) , ( break116.a * break178.x )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch221 = appendResult205;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch221 = appendResult205;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch221 = appendResult205;
				#else
				float4 staticSwitch221 = appendResult205;
				#endif
				float4 temp_output_18_0_g1042 = staticSwitch221;
				float4 appendResult206 = (float4(( break177.y + break115.r ) , ( break115.g + break762.y ) , ( HeightMap1118 * break982.y ) , ( break115.a * break178.y )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch222 = appendResult206;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch222 = appendResult206;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch222 = appendResult206;
				#else
				float4 staticSwitch222 = appendResult206;
				#endif
				float4 temp_output_22_0_g1042 = staticSwitch222;
				float4 _Vector4 = float4(0,0,0,0);
				float4 appendResult207 = (float4(( break177.z + break114.r ) , ( break114.g + break762.z ) , ( HeightMap2120 * break982.z ) , ( break114.a * break178.z )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch223 = _Vector4;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch223 = appendResult207;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch223 = appendResult207;
				#else
				float4 staticSwitch223 = _Vector4;
				#endif
				float4 temp_output_23_0_g1042 = staticSwitch223;
				float4 appendResult208 = (float4(( break177.w + break113.r ) , ( break113.g + break762.w ) , ( HeightMap3117 * break982.w ) , ( break113.a * break178.w )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch224 = _Vector4;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch224 = _Vector4;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch224 = appendResult208;
				#else
				float4 staticSwitch224 = _Vector4;
				#endif
				float4 temp_output_24_0_g1042 = staticSwitch224;
				float4 weightedBlendVar30_g1042 = temp_output_14_0_g1042;
				float4 weightedBlend30_g1042 = ( weightedBlendVar30_g1042.x*temp_output_18_0_g1042 + weightedBlendVar30_g1042.y*temp_output_22_0_g1042 + weightedBlendVar30_g1042.z*temp_output_23_0_g1042 + weightedBlendVar30_g1042.w*temp_output_24_0_g1042 );
				float4 break13_g1042 = HeightRawCombined0199;
				float4 break15_g1042 = temp_output_14_0_g1042;
				float temp_output_53_0_g1042 = ( break13_g1042.x + break15_g1042.x );
				float temp_output_54_0_g1042 = ( break13_g1042.y + break15_g1042.y );
				float temp_output_55_0_g1042 = ( break13_g1042.z + break15_g1042.z );
				float temp_output_56_0_g1042 = ( break13_g1042.w + break15_g1042.w );
				float temp_output_79_0_g1042 = ( max( max( max( temp_output_53_0_g1042 , temp_output_54_0_g1042 ) , temp_output_55_0_g1042 ) , temp_output_56_0_g1042 ) - HeightBlending854 );
				float temp_output_63_0_g1042 = max( ( temp_output_53_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_67_0_g1042 = max( ( temp_output_54_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_71_0_g1042 = max( ( temp_output_55_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_73_0_g1042 = max( ( temp_output_56_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float4 lerpResult78_g1042 = lerp( weightedBlend30_g1042 , ( ( ( temp_output_18_0_g1042 * temp_output_63_0_g1042 ) + ( temp_output_22_0_g1042 * temp_output_67_0_g1042 ) + ( temp_output_23_0_g1042 * temp_output_71_0_g1042 ) + ( temp_output_24_0_g1042 * temp_output_73_0_g1042 ) ) / ( temp_output_63_0_g1042 + temp_output_67_0_g1042 + temp_output_71_0_g1042 + temp_output_73_0_g1042 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1042 = lerpResult78_g1042;
				#else
				float4 staticSwitch77_g1042 = weightedBlend30_g1042;
				#endif
				float4 Mask0240 = staticSwitch77_g1042;
				float4 break245 = Mask0240;
				float Smoothness0540 = break245.w;
				float2 temp_output_5_0_g1043 = texCoord232;
				float localStochasticTiling2_g1044 = ( 0.0 );
				float2 Input_UV145_g1044 = temp_output_5_0_g1043;
				float2 UV2_g1044 = Input_UV145_g1044;
				float2 UV12_g1044 = float2( 0,0 );
				float2 UV22_g1044 = float2( 0,0 );
				float2 UV32_g1044 = float2( 0,0 );
				float W12_g1044 = 0.0;
				float W22_g1044 = 0.0;
				float W32_g1044 = 0.0;
				StochasticTiling( UV2_g1044 , UV12_g1044 , UV22_g1044 , UV32_g1044 , W12_g1044 , W22_g1044 , W32_g1044 );
				float2 temp_output_10_0_g1044 = ddx( Input_UV145_g1044 );
				float2 temp_output_12_0_g1044 = ddy( Input_UV145_g1044 );
				float4 Output_2D293_g1044 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV12_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W12_g1044 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV22_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W22_g1044 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV32_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W32_g1044 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1043 = Output_2D293_g1044;
				#else
				float4 staticSwitch7_g1043 = SAMPLE_TEXTURE2D( _SnowMask, sampler_SnowMask, temp_output_5_0_g1043 );
				#endif
				float4 break244 = staticSwitch7_g1043;
				float Snow_Smoothness536 = ( break244.a * _SnowSmoothness );
				float lerpResult559 = lerp( Smoothness0540 , Snow_Smoothness536 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch564 = lerpResult559;
				#else
				float staticSwitch564 = Smoothness0540;
				#endif
				#ifdef _RAIN_ON
				float staticSwitch544 = ( Out1_g1054 * 0.2 );
				#else
				float staticSwitch544 = 0.0;
				#endif
				float RainDropSmoothness555 = staticSwitch544;
				#ifdef _RAIN_ON
				float staticSwitch545 = ( temp_output_366_0 * _RainFlowSmoothnessBoost );
				#else
				float staticSwitch545 = 0.0;
				#endif
				float RainFlowSmoothness557 = staticSwitch545;
				float Smoothness_Final585 = saturate( ( ( staticSwitch564 + ( ( ( _WetnessBoost * Wetness228 ) + saturate( ( Puddle_Mask264 - 0.2 ) ) ) * ( 1.0 - Snow_Blending247 ) ) ) + ( RainDropSmoothness555 + RainFlowSmoothness557 ) ) );
				
				float2 uv_TerrainHolesTexture = packedInput.ase_texcoord3.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				float holeClipValue579 = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float Alpha1008 = holeClipValue579;
				
				surfaceDescription.Normal = staticSwitch665;
				surfaceDescription.Smoothness = Smoothness_Final585;
				surfaceDescription.Alpha = Alpha1008;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

                #if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
				outputDepth = posInput.deviceDepth;
				#endif

                #if SHADERPASS == SHADERPASS_SHADOWS
                float bias = max(abs(ddx(posInput.deviceDepth)), abs(ddy(posInput.deviceDepth))) * _SlopeScaleDepthBias;
                outputDepth += bias;
                #endif

				#ifdef SCENESELECTIONPASS
    				outColor = float4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
    				outColor = unity_SelectionID;
				#else
    				#ifdef WRITE_MSAA_DEPTH
    				depthColor = packedInput.positionCS.z;
    				depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
    				#endif

    				#if defined(WRITE_NORMAL_BUFFER)
    				EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
    				#endif

    				#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
    				DecalPrepassData decalPrepassData;
    				decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
    				decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
    				EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
    				#endif

				#endif // SCENESELECTIONPASS

			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="Forward" }

			Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Blend 1 SrcAlpha OneMinusSrcAlpha

			Cull [_CullModeForward]
			ZTest [_ZTestDepthEqualForOpaque]
			ZWrite [_ZWrite]

			Stencil
			{
				Ref [_StencilRef]
				WriteMask [_StencilWriteMask]
				Comp Always
				Pass Replace
			}


            ColorMask [_ColorMaskTransparentVelOne] 1
            ColorMask [_ColorMaskTransparentVelTwo] 2

			HLSLPROGRAM
			#pragma shader_feature_local_fragment _ _DISABLE_DECALS
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma shader_feature_local _ _DOUBLESIDED_ON
			#pragma shader_feature_local _ _ALPHATEST_ON
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 140011
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT

            #pragma multi_compile_fragment _ SHADOWS_SHADOWMASK
			#pragma multi_compile_fragment SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH
            #pragma multi_compile_fragment AREA_SHADOW_MEDIUM AREA_SHADOW_HIGH
            #pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
            #pragma multi_compile_fragment SCREEN_SPACE_SHADOWS_OFF SCREEN_SPACE_SHADOWS_ON
            #pragma multi_compile_fragment USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST

            #pragma multi_compile _ DEBUG_DISPLAY
            #pragma multi_compile _ LIGHTMAP_ON
            #pragma multi_compile _ DIRLIGHTMAP_COMBINED
            #pragma multi_compile _ DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fragment DECALS_OFF DECALS_3RT DECALS_4RT
            #pragma multi_compile_fragment _ DECAL_SURFACE_GRADIENT

			#ifndef SHADER_STAGE_FRAGMENT
			#define SHADOW_LOW
			#define USE_FPTL_LIGHTLIST
			#endif

			#pragma vertex Vert
			#pragma fragment Frag

			#define SHADERPASS SHADERPASS_FORWARD
		    #define HAS_LIGHTLOOP 1

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

            //#if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            //#define FRAG_INPUTS_ENABLE_STRIPPING
            //#endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
                #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif

            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
                #define RAYTRACING_SHADER_GRAPH_LOW
            #endif

            #ifndef SHADER_UNLIT
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			    #define ASE_NEED_CULLFACE 1
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif

            #ifndef DEBUG_DISPLAY
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif

            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif

			CBUFFER_START( UnityPerMaterial )
			float4 _ColorTint3;
			float4 _ColorTint2;
			float4 _ColorTint4;
			float4 _ColorTint5;
			float4 _ColorTint6;
			float4 _ColorTint7;
			float4 _ColorTint8;
			float4 _ColorTint9;
			float4 _ColorTint10;
			float4 _ColorTint11;
			float4 _HeightContrast0;
			float4 _HeightContrast1;
			float4 _HeightContrast2;
			float4 _DisplacementMod0;
			float4 _Occlusion2;
			float4 _PuddleColor;
			float4 _Occlusion1;
			float4 _Occlusion0;
			float4 _Metallic02;
			float4 _Metallic01;
			float4 _NormalScale00;
			float4 _NormalScale01;
			float4 _NormalScale02;
			float4 _Metallic00;
			float4 _ColorTint1;
			float4 _TerrainHolesTexture_ST;
			float4 _ColorTint0;
			float4 _LayerScaleOffset11;
			float4 _Smoothness02;
			float4 _Smoothness01;
			float4 _Smoothness00;
			float4 _DisplacementMod2;
			float4 _Control_ST;
			float4 _Control1_ST;
			float4 _Control2_ST;
			float4 _SamplingType0;
			float4 _SamplingType1;
			float4 _DisplacementMod1;
			float4 _LayerScaleOffset0;
			float4 _SamplingType2;
			float4 _LayerScaleOffset2;
			float4 _LayerScaleOffset3;
			float4 _LayerScaleOffset4;
			float4 _LayerScaleOffset5;
			float4 _LayerScaleOffset6;
			float4 _LayerScaleOffset7;
			float4 _LayerScaleOffset8;
			float4 _LayerScaleOffset9;
			float4 _LayerScaleOffset10;
			float4 _LayerScaleOffset1;
			float _SSSDistortion;
			float _SnowNormalScale;
			float _RainDropIntensity;
			float _SSSScale;
			float _TessellationMaxDistance;
			float _RainDropSpeed;
			float _SnowMetallic;
			float _SnowSmoothness;
			float _SSSIntensity;
			float _RainDropTiling;
			float _HeightBlendStrength;
			float _RainFlowIntensity;
			float _TessellationMinDistance;
			float _TessellationFactor;
			float _SnowDisplacement;
			float _EnviroSnow;
			float _SnowSlopePower;
			float _SnowHeightBlending;
			float _MipDistanceBlending;
			float _WetnessBoost;
			float _HeightBlending;
			float _RainDistanceFade;
			float _PuddleIntensity;
			float _EnviroWetness;
			float _SnowTiling;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _RainFlowStrength;
			float _EnviroRainIntensity;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _PuddleCoverageNoise;
			float _RainFlowSmoothnessBoost;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			    float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			    float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			    float _TessPhongStrength;
			    float _TessValue;
			    float _TessMin;
			    float _TessMax;
			    float _TessEdgeLength;
			    float _TessMaxDisp;
			#endif
			CBUFFER_END

            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Control1);
			SAMPLER(sampler_Control1);
			TEXTURE2D(_Control2);
			SAMPLER(sampler_Control2);
			TEXTURE2D_ARRAY(_AlbedoArray);
			SAMPLER(sampler_AlbedoArray);
			TEXTURE2D_ARRAY(_MaskArray);
			SAMPLER(sampler_MaskArray);
			TEXTURE2D(_SnowAlbedo);
			SAMPLER(sampler_SnowAlbedo);
			float4x4 unity_CameraProjection;
			float4x4 unity_CameraInvProjection;
			float4x4 unity_WorldToCamera;
			float4x4 unity_CameraToWorld;
			TEXTURE2D_ARRAY(_NormalArray);
			SAMPLER(sampler_NormalArray);
			TEXTURE2D(_WaveNormal);
			SAMPLER(sampler_WaveNormal);
			TEXTURE2D(_SnowNormal);
			SAMPLER(sampler_SnowNormal);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			TEXTURE2D(_SnowMask);
			SAMPLER(sampler_SnowMask);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_TANGENT
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _HEIGHTBLEND_ON
			#pragma shader_feature_local _SPLATCOUNT__4 _SPLATCOUNT__8 _SPLATCOUNT__12
			#pragma multi_compile_local _QUALITY_FAST _QUALITY_BALANCE _QUALITY_QUALITY
			#pragma shader_feature_local _STOCHASTIC_ON
			#pragma shader_feature_local _RAIN_ON
			#pragma shader_feature_local _TERRAIN_INSTANCED_PERPIXEL_NORMAL
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap
			#include "EnviroInclude.hlsl"


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float3 previousPositionOS : TEXCOORD4;
				float3 precomputedVelocity : TEXCOORD5;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2;
				float4 uv1 : TEXCOORD3;
				float4 uv2 : TEXCOORD4;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 vpassPositionCS : TEXCOORD5;
					float3 vpassPreviousPositionCS : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			void GetSplats( float4 in0, float4 in1, float4 in2, out float4 Out1, out float4 Out0 )
			{
				GetSplatsWeights(in0,in1,in2,Out0,Out1);
			}
			
			void GetUVS( float4 in0, float4 in1, float4 in2, float4 in3, float4 in4, float4 in5, float4 in6, float4 in7, float4 in8, float4 in9, float4 in10, float4 in11, float4 index, out float4 Out0, out float4 Out1, out float4 Out2, out float4 Out3 )
			{
				GetLayerUV(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,index,Out0,Out1,Out2,Out3);
			}
			
			void GetLayerSettings( float4 in0, float4 in1, float4 in2, float4 index, out float4 Out0 )
			{
				GetLayerValue(in0,in1,in2,index,Out0);
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			void StochasticTiling( float2 UV, out float2 UV1, out float2 UV2, out float2 UV3, out float W1, out float W2, out float W3 )
			{
				float2 vertex1, vertex2, vertex3;
				// Scaling of the input
				float2 uv = UV * 3.464; // 2 * sqrt (3)
				// Skew input space into simplex triangle grid
				const float2x2 gridToSkewedGrid = float2x2( 1.0, 0.0, -0.57735027, 1.15470054 );
				float2 skewedCoord = mul( gridToSkewedGrid, uv );
				// Compute local triangle vertex IDs and local barycentric coordinates
				int2 baseId = int2( floor( skewedCoord ) );
				float3 temp = float3( frac( skewedCoord ), 0 );
				temp.z = 1.0 - temp.x - temp.y;
				if ( temp.z > 0.0 )
				{
					W1 = temp.z;
					W2 = temp.y;
					W3 = temp.x;
					vertex1 = baseId;
					vertex2 = baseId + int2( 0, 1 );
					vertex3 = baseId + int2( 1, 0 );
				}
				else
				{
					W1 = -temp.z;
					W2 = 1.0 - temp.y;
					W3 = 1.0 - temp.x;
					vertex1 = baseId + int2( 1, 1 );
					vertex2 = baseId + int2( 1, 0 );
					vertex3 = baseId + int2( 0, 1 );
				}
				UV1 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex1 ) ) * 43758.5453 );
				UV2 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex2 ) ) * 43758.5453 );
				UV3 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex3 ) ) * 43758.5453 );
				return;
			}
			
			float2 UnityGradientNoiseDir( float2 p )
			{
				p = fmod(p , 289);
				float x = fmod((34 * p.x + 1) * p.x , 289) + p.y;
				x = fmod( (34 * x + 1) * x , 289);
				x = frac( x / 41 ) * 2 - 1;
				return normalize( float2(x - floor(x + 0.5 ), abs( x ) - 0.5 ) );
			}
			
			float UnityGradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 ip = floor( p );
				float2 fp = frac( p );
				float d00 = dot( UnityGradientNoiseDir( ip ), fp );
				float d01 = dot( UnityGradientNoiseDir( ip + float2( 0, 1 ) ), fp - float2( 0, 1 ) );
				float d10 = dot( UnityGradientNoiseDir( ip + float2( 1, 0 ) ), fp - float2( 1, 0 ) );
				float d11 = dot( UnityGradientNoiseDir( ip + float2( 1, 1 ) ), fp - float2( 1, 1 ) );
				fp = fp * fp * fp * ( fp * ( fp * 6 - 15 ) + 10 );
				return lerp( lerp( d00, d01, fp.y ), lerp( d10, d11, fp.y ), fp.x ) + 0.5;
			}
			
			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				surfaceData.specularOcclusion = 1.0;

				surfaceData.baseColor =                 surfaceDescription.BaseColor;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness = 				surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.transmissionMask =			surfaceDescription.TransmissionMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
                #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                    if (_EnableSSRefraction)
                    {
                        surfaceData.ior =                       surfaceDescription.RefractionIndex;
                        surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                        surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                        surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                        surfaceDescription.Alpha = 1.0;
                    }
                    else
                    {
                        surfaceData.ior = 1.0;
                        surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                        surfaceData.atDistance = 1.0;
                        surfaceData.transmittanceMask = 0.0;
                        surfaceDescription.Alpha = 1.0;
                    }
                #else
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                #endif

				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif

                #ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
                    surfaceData.normalWS = float3(0, 1, 0);
                #endif

				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                    surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                    surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				#ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
                    float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;

	            

	            
                #if ASE_SRP_VERSION >=140008
                #ifdef DECAL_NORMAL_BLENDING
					normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(normalTS, fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;

                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                     }
                    #endif

                    GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
                #else
					GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);

                    #if HAVE_DECALS
                    if (_EnableDecals)
                    {
                        float alpha = 1.0;
                        alpha = surfaceDescription.Alpha;
        
                        DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                        ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                        ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
                    }
                    #endif
                #endif
                #endif
               

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz );
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
                    GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
                    surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
				#endif

				#if defined(DEBUG_DISPLAY)
				    if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				    {
					   surfaceData.metallic = 0;
				    }
				    ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData); 
				#endif

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                    surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

                #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                    surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
                #endif
			}

			// Get Surface And BuiltinData
			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                    LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif  
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);

				#ifdef _ALPHATEST_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
				#endif

				#ifdef _DEPTHOFFSET_ON
                    ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
				#endif

				float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				#ifdef _DEPTHOFFSET_ON
                    builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

                #ifdef UNITY_VIRTUAL_TEXTURING
                    builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
                    builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
                    builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

                builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				inputMesh = ApplyMeshModification(inputMesh);
				float3 appendResult261 = (float3(_SnowDisplacement , _SnowDisplacement , _SnowDisplacement));
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float Snow_Amount174 = _EnviroSnow;
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float3 Snow_Displacement272 = ( ( appendResult261 * ase_worldNormal ) * ( Snow_Blending247 * Snow_Amount174 ) );
				#ifdef _SNOW_ON
				float3 staticSwitch279 = Snow_Displacement272;
				#else
				float3 staticSwitch279 = float3(0,0,0);
				#endif
				float3 DisplacementFinal282 = ( staticSwitch279 + float3(0,0,0) );
				
				float4 appendResult660 = (float4(cross( inputMesh.normalOS , float3(0,0,1) ) , -1.0));
				
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord9.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_texcoord7.xy = inputMesh.ase_texcoord.xy;
				outputPackedVaryingsMeshToPS.ase_texcoord8 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord7.zw = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord9.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = DisplacementFinal282;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = appendResult660;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}
				#endif

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.normalWS.xyz = normalWS;
				outputPackedVaryingsMeshToPS.tangentWS.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.uv1.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.uv2.xyzw = inputMesh.uv2;

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outputPackedVaryingsMeshToPS.vpassPositionCS = float3(VPASSpositionCS.xyw);
					outputPackedVaryingsMeshToPS.vpassPreviousPositionCS = float3(VPASSpreviousPositionCS.xyw);
				#endif
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplayMaterial.hlsl"

            #ifdef UNITY_VIRTUAL_TEXTURING
                #ifdef OUTPUT_SPLIT_LIGHTING
                   #define DIFFUSE_LIGHTING_TARGET SV_Target2
                   #define SSS_BUFFER_TARGET SV_Target3
                #elif defined(_WRITE_TRANSPARENT_MOTION_VECTOR)
                   #define MOTION_VECTOR_TARGET SV_Target2
            	#endif
            #if defined(SHADER_API_PSSL)
            	#pragma PSSL_target_output_format(target 1 FMT_32_ABGR)
            #endif
            #else
                #ifdef OUTPUT_SPLIT_LIGHTING
                #define DIFFUSE_LIGHTING_TARGET SV_Target1
                #define SSS_BUFFER_TARGET SV_Target2
                #elif defined(_WRITE_TRANSPARENT_MOTION_VECTOR)
                #define MOTION_VECTOR_TARGET SV_Target1
                #endif
            #endif

			void Frag(PackedVaryingsMeshToPS packedInput
				, out float4 outColor:SV_Target0
            #ifdef UNITY_VIRTUAL_TEXTURING
				, out float4 outVTFeedback : SV_Target1
            #endif
            #ifdef OUTPUT_SPLIT_LIGHTING
				, out float4 outDiffuseLighting : DIFFUSE_LIGHTING_TARGET
				, OUTPUT_SSSBUFFER(outSSSBuffer) : SSS_BUFFER_TARGET
            #elif defined(_WRITE_TRANSPARENT_MOTION_VECTOR)
				, out float4 outMotionVec : MOTION_VECTOR_TARGET
            #endif
            #ifdef _DEPTHOFFSET_ON
				, out float outputDepth : DEPTH_OFFSET_SEMANTIC
            #endif
		    
						)
			{
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outMotionVec = float4(2.0, 0.0, 0.0, 1.0);
				#endif

				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				float3 positionRWS = packedInput.positionRWS.xyz;
				float3 normalWS = packedInput.normalWS.xyz;
				float4 tangentWS = packedInput.tangentWS.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.uv1.xyzw;
				input.texCoord2 = packedInput.uv2.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				

				
				AdjustFragInputsToOffScreenRendering(input, _OffScreenRendering > 0, _OffScreenDownsampleFactor);
			

				uint2 tileIndex = uint2(input.positionSS.xy) / GetTileSize ();

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex );

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float localGetSplats43 = ( 0.0 );
				float2 uv_Control = packedInput.ase_texcoord7.xy * _Control_ST.xy + _Control_ST.zw;
				float4 SplatControl033 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch42 = SplatControl033;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch42 = SplatControl033;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch42 = SplatControl033;
				#else
				float4 staticSwitch42 = SplatControl033;
				#endif
				float4 in043 = staticSwitch42;
				float4 _Vector1 = float4(0,0,0,0);
				float2 uv_Control1 = packedInput.ase_texcoord7.xy * _Control1_ST.xy + _Control1_ST.zw;
				float4 SplatControl135 = SAMPLE_TEXTURE2D( _Control1, sampler_Control1, uv_Control1 );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch41 = _Vector1;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch41 = SplatControl135;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch41 = SplatControl135;
				#else
				float4 staticSwitch41 = _Vector1;
				#endif
				float4 in143 = staticSwitch41;
				float2 uv_Control2 = packedInput.ase_texcoord7.xy * _Control2_ST.xy + _Control2_ST.zw;
				float4 SplatControl234 = SAMPLE_TEXTURE2D( _Control2, sampler_Control2, uv_Control2 );
				#if defined( _SPLATCOUNT__4 )
				float4 staticSwitch40 = _Vector1;
				#elif defined( _SPLATCOUNT__8 )
				float4 staticSwitch40 = _Vector1;
				#elif defined( _SPLATCOUNT__12 )
				float4 staticSwitch40 = SplatControl234;
				#else
				float4 staticSwitch40 = _Vector1;
				#endif
				float4 in243 = staticSwitch40;
				float4 Out143 = float4( 0,0,0,0 );
				float4 Out043 = float4( 0,0,0,0 );
				{
				GetSplatsWeights(in043,in143,in243,Out043,Out143);
				}
				float4 SplatWeights198 = Out143;
				float4 temp_output_14_0_g1066 = SplatWeights198;
				float localGetLayerSettings894 = ( 0.0 );
				float4 in0894 = _SamplingType0;
				float4 in1894 = _SamplingType1;
				float4 in2894 = _SamplingType2;
				float4 SplatIndex44 = Out043;
				float4 index894 = SplatIndex44;
				float4 Out0894 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0894,in1894,in2894,index894,Out0894);
				}
				float4 samplingType895 = Out0894;
				float4 break896 = samplingType895;
				float2 appendResult69 = (float2(packedInput.ase_texcoord8.xyz.x , packedInput.ase_texcoord8.xyz.z));
				float localGetUVS58 = ( 0.0 );
				float4 in058 = _LayerScaleOffset0;
				float4 in158 = _LayerScaleOffset1;
				float4 in258 = _LayerScaleOffset2;
				float4 in358 = _LayerScaleOffset3;
				float4 in458 = _LayerScaleOffset4;
				float4 in558 = _LayerScaleOffset5;
				float4 in658 = _LayerScaleOffset6;
				float4 in758 = _LayerScaleOffset7;
				float4 in858 = _LayerScaleOffset8;
				float4 in958 = _LayerScaleOffset9;
				float4 in1058 = _LayerScaleOffset10;
				float4 in1158 = _LayerScaleOffset11;
				float4 index58 = SplatIndex44;
				float4 Out058 = float4( 0,0,0,0 );
				float4 Out158 = float4( 0,0,0,0 );
				float4 Out258 = float4( 0,0,0,0 );
				float4 Out358 = float4( 0,0,0,0 );
				{
				GetLayerUV(in058,in158,in258,in358,in458,in558,in658,in758,in858,in958,in1058,in1158,index58,Out058,Out158,Out258,Out358);
				}
				float4 break63 = Out058;
				float2 appendResult65 = (float2(break63.x , break63.y));
				float2 appendResult73 = (float2(break63.z , break63.w));
				float4 break86 = SplatIndex44;
				float3 appendResult93 = (float3(( ( appendResult69 * appendResult65 ) + appendResult73 ) , break86.x));
				float3 UV0100 = appendResult93;
				float3 break485 = UV0100;
				float2 appendResult493 = (float2(break485.x , break485.y));
				float2 temp_output_5_0_g1057 = appendResult493;
				int temp_output_4_0_g1057 = (int)break485.z;
				float2 appendResult87 = (float2(packedInput.ase_texcoord8.xyz.x , packedInput.ase_texcoord8.xyz.z));
				float2 Mip101 = ( appendResult87 * ( 1.0 / max( 0.001 , _MipDistanceBlending ) ) );
				float2 temp_output_9_0_g1057 = Mip101;
				float2 temp_output_12_0_g1057 = ddx( temp_output_9_0_g1057 );
				float2 temp_output_13_0_g1057 = ddy( temp_output_9_0_g1057 );
				float4 tex2DArrayNode3_g1057 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1057,(float)temp_output_4_0_g1057, temp_output_12_0_g1057, temp_output_13_0_g1057 );
				float localStochasticTiling190_g1058 = ( 0.0 );
				float2 Input_UV317_g1058 = temp_output_5_0_g1057;
				float2 UV190_g1058 = Input_UV317_g1058;
				float2 UV1190_g1058 = float2( 0,0 );
				float2 UV2190_g1058 = float2( 0,0 );
				float2 UV3190_g1058 = float2( 0,0 );
				float W1190_g1058 = 0.0;
				float W2190_g1058 = 0.0;
				float W3190_g1058 = 0.0;
				StochasticTiling( UV190_g1058 , UV1190_g1058 , UV2190_g1058 , UV3190_g1058 , W1190_g1058 , W2190_g1058 , W3190_g1058 );
				float Input_Index330_g1058 = (float)temp_output_4_0_g1057;
				float2 temp_output_358_0_g1058 = temp_output_12_0_g1057;
				float2 temp_output_359_0_g1058 = temp_output_13_0_g1057;
				float4 Output_2DArray152_g1058 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W1190_g1058 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W2190_g1058 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1058,Input_Index330_g1058, temp_output_358_0_g1058, temp_output_359_0_g1058 ) * W3190_g1058 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1057 = Output_2DArray152_g1058;
				#else
				float4 staticSwitch7_g1057 = tex2DArrayNode3_g1057;
				#endif
				float4 ifLocalVar17_g1057 = 0;
				UNITY_BRANCH 
				if( break896.x > 0.0 )
				ifLocalVar17_g1057 = staticSwitch7_g1057;
				else if( break896.x == 0.0 )
				ifLocalVar17_g1057 = tex2DArrayNode3_g1057;
				float localGetUVS795 = ( 0.0 );
				float4 in0795 = _ColorTint0;
				float4 in1795 = _ColorTint1;
				float4 in2795 = _ColorTint2;
				float4 in3795 = _ColorTint3;
				float4 in4795 = _ColorTint4;
				float4 in5795 = _ColorTint5;
				float4 in6795 = _ColorTint6;
				float4 in7795 = _ColorTint7;
				float4 in8795 = _ColorTint8;
				float4 in9795 = _ColorTint9;
				float4 in10795 = _ColorTint10;
				float4 in11795 = _ColorTint11;
				float4 index795 = SplatIndex44;
				float4 Out0795 = float4( 0,0,0,0 );
				float4 Out1795 = float4( 0,0,0,0 );
				float4 Out2795 = float4( 0,0,0,0 );
				float4 Out3795 = float4( 0,0,0,0 );
				{
				GetLayerUV(in0795,in1795,in2795,in3795,in4795,in5795,in6795,in7795,in8795,in9795,in10795,in11795,index795,Out0795,Out1795,Out2795,Out3795);
				}
				float4 Color0796 = Out0795;
				float4 temp_output_616_0 = ( ifLocalVar17_g1057 * Color0796 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch511 = temp_output_616_0;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch511 = temp_output_616_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch511 = temp_output_616_0;
				#else
				float4 staticSwitch511 = temp_output_616_0;
				#endif
				float4 temp_output_2_0_g1065 = staticSwitch511;
				float4 temp_output_18_0_g1066 = float4( (temp_output_2_0_g1065).rgb , 0.0 );
				float4 break62 = Out158;
				float2 appendResult66 = (float2(break62.x , break62.y));
				float2 appendResult72 = (float2(break62.z , break62.w));
				float3 appendResult90 = (float3(( ( appendResult69 * appendResult66 ) + appendResult72 ) , break86.y));
				float3 UV197 = appendResult90;
				float3 break487 = UV197;
				float2 appendResult492 = (float2(break487.x , break487.y));
				float2 temp_output_5_0_g1061 = appendResult492;
				int temp_output_4_0_g1061 = (int)break487.z;
				float2 temp_output_9_0_g1061 = Mip101;
				float2 temp_output_12_0_g1061 = ddx( temp_output_9_0_g1061 );
				float2 temp_output_13_0_g1061 = ddy( temp_output_9_0_g1061 );
				float4 tex2DArrayNode3_g1061 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1061,(float)temp_output_4_0_g1061, temp_output_12_0_g1061, temp_output_13_0_g1061 );
				float localStochasticTiling190_g1062 = ( 0.0 );
				float2 Input_UV317_g1062 = temp_output_5_0_g1061;
				float2 UV190_g1062 = Input_UV317_g1062;
				float2 UV1190_g1062 = float2( 0,0 );
				float2 UV2190_g1062 = float2( 0,0 );
				float2 UV3190_g1062 = float2( 0,0 );
				float W1190_g1062 = 0.0;
				float W2190_g1062 = 0.0;
				float W3190_g1062 = 0.0;
				StochasticTiling( UV190_g1062 , UV1190_g1062 , UV2190_g1062 , UV3190_g1062 , W1190_g1062 , W2190_g1062 , W3190_g1062 );
				float Input_Index330_g1062 = (float)temp_output_4_0_g1061;
				float2 temp_output_358_0_g1062 = temp_output_12_0_g1061;
				float2 temp_output_359_0_g1062 = temp_output_13_0_g1061;
				float4 Output_2DArray152_g1062 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W1190_g1062 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W2190_g1062 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1062,Input_Index330_g1062, temp_output_358_0_g1062, temp_output_359_0_g1062 ) * W3190_g1062 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1061 = Output_2DArray152_g1062;
				#else
				float4 staticSwitch7_g1061 = tex2DArrayNode3_g1061;
				#endif
				float4 ifLocalVar17_g1061 = 0;
				UNITY_BRANCH 
				if( break896.y > 0.0 )
				ifLocalVar17_g1061 = staticSwitch7_g1061;
				else if( break896.y == 0.0 )
				ifLocalVar17_g1061 = tex2DArrayNode3_g1061;
				float4 Color1797 = Out1795;
				float4 temp_output_617_0 = ( ifLocalVar17_g1061 * Color1797 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch508 = temp_output_617_0;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch508 = temp_output_617_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch508 = temp_output_617_0;
				#else
				float4 staticSwitch508 = temp_output_617_0;
				#endif
				float4 temp_output_22_0_g1066 = staticSwitch508;
				float4 _Vector2 = float4(0,0,0,0);
				float4 break60 = Out258;
				float2 appendResult67 = (float2(break60.x , break60.y));
				float2 appendResult79 = (float2(break60.z , break60.w));
				float3 appendResult91 = (float3(( ( appendResult69 * appendResult67 ) + appendResult79 ) , break86.z));
				float3 UV298 = appendResult91;
				float3 break488 = UV298;
				float2 appendResult495 = (float2(break488.x , break488.y));
				float2 temp_output_5_0_g1063 = appendResult495;
				int temp_output_4_0_g1063 = (int)break488.z;
				float2 temp_output_9_0_g1063 = Mip101;
				float2 temp_output_12_0_g1063 = ddx( temp_output_9_0_g1063 );
				float2 temp_output_13_0_g1063 = ddy( temp_output_9_0_g1063 );
				float4 tex2DArrayNode3_g1063 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1063,(float)temp_output_4_0_g1063, temp_output_12_0_g1063, temp_output_13_0_g1063 );
				float localStochasticTiling190_g1064 = ( 0.0 );
				float2 Input_UV317_g1064 = temp_output_5_0_g1063;
				float2 UV190_g1064 = Input_UV317_g1064;
				float2 UV1190_g1064 = float2( 0,0 );
				float2 UV2190_g1064 = float2( 0,0 );
				float2 UV3190_g1064 = float2( 0,0 );
				float W1190_g1064 = 0.0;
				float W2190_g1064 = 0.0;
				float W3190_g1064 = 0.0;
				StochasticTiling( UV190_g1064 , UV1190_g1064 , UV2190_g1064 , UV3190_g1064 , W1190_g1064 , W2190_g1064 , W3190_g1064 );
				float Input_Index330_g1064 = (float)temp_output_4_0_g1063;
				float2 temp_output_358_0_g1064 = temp_output_12_0_g1063;
				float2 temp_output_359_0_g1064 = temp_output_13_0_g1063;
				float4 Output_2DArray152_g1064 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W1190_g1064 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W2190_g1064 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1064,Input_Index330_g1064, temp_output_358_0_g1064, temp_output_359_0_g1064 ) * W3190_g1064 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1063 = Output_2DArray152_g1064;
				#else
				float4 staticSwitch7_g1063 = tex2DArrayNode3_g1063;
				#endif
				float4 ifLocalVar17_g1063 = 0;
				UNITY_BRANCH 
				if( break896.z > 0.0 )
				ifLocalVar17_g1063 = staticSwitch7_g1063;
				else if( break896.z == 0.0 )
				ifLocalVar17_g1063 = tex2DArrayNode3_g1063;
				float4 Color2798 = Out2795;
				float4 temp_output_618_0 = ( ifLocalVar17_g1063 * Color2798 );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch509 = _Vector2;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch509 = temp_output_618_0;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch509 = temp_output_618_0;
				#else
				float4 staticSwitch509 = _Vector2;
				#endif
				float4 temp_output_23_0_g1066 = staticSwitch509;
				float4 break61 = Out358;
				float2 appendResult68 = (float2(break61.x , break61.y));
				float2 appendResult78 = (float2(break61.z , break61.w));
				float3 appendResult92 = (float3(( ( appendResult69 * appendResult68 ) + appendResult78 ) , break86.w));
				float3 UV399 = appendResult92;
				float3 break486 = UV399;
				float2 appendResult491 = (float2(break486.x , break486.y));
				float2 temp_output_5_0_g1059 = appendResult491;
				int temp_output_4_0_g1059 = (int)break486.z;
				float2 temp_output_9_0_g1059 = Mip101;
				float2 temp_output_12_0_g1059 = ddx( temp_output_9_0_g1059 );
				float2 temp_output_13_0_g1059 = ddy( temp_output_9_0_g1059 );
				float4 tex2DArrayNode3_g1059 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, temp_output_5_0_g1059,(float)temp_output_4_0_g1059, temp_output_12_0_g1059, temp_output_13_0_g1059 );
				float localStochasticTiling190_g1060 = ( 0.0 );
				float2 Input_UV317_g1060 = temp_output_5_0_g1059;
				float2 UV190_g1060 = Input_UV317_g1060;
				float2 UV1190_g1060 = float2( 0,0 );
				float2 UV2190_g1060 = float2( 0,0 );
				float2 UV3190_g1060 = float2( 0,0 );
				float W1190_g1060 = 0.0;
				float W2190_g1060 = 0.0;
				float W3190_g1060 = 0.0;
				StochasticTiling( UV190_g1060 , UV1190_g1060 , UV2190_g1060 , UV3190_g1060 , W1190_g1060 , W2190_g1060 , W3190_g1060 );
				float Input_Index330_g1060 = (float)temp_output_4_0_g1059;
				float2 temp_output_358_0_g1060 = temp_output_12_0_g1059;
				float2 temp_output_359_0_g1060 = temp_output_13_0_g1059;
				float4 Output_2DArray152_g1060 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV1190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W1190_g1060 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV2190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W2190_g1060 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _AlbedoArray, sampler_AlbedoArray, UV3190_g1060,Input_Index330_g1060, temp_output_358_0_g1060, temp_output_359_0_g1060 ) * W3190_g1060 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1059 = Output_2DArray152_g1060;
				#else
				float4 staticSwitch7_g1059 = tex2DArrayNode3_g1059;
				#endif
				float4 ifLocalVar17_g1059 = 0;
				UNITY_BRANCH 
				if( break896.w > 0.0 )
				ifLocalVar17_g1059 = staticSwitch7_g1059;
				else if( break896.w == 0.0 )
				ifLocalVar17_g1059 = tex2DArrayNode3_g1059;
				float4 Color3799 = Out3795;
				#if defined( _QUALITY_FAST )
				float4 staticSwitch510 = _Vector2;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch510 = _Vector2;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch510 = ( ifLocalVar17_g1059 * Color3799 );
				#else
				float4 staticSwitch510 = _Vector2;
				#endif
				float4 temp_output_24_0_g1066 = staticSwitch510;
				float4 weightedBlendVar30_g1066 = temp_output_14_0_g1066;
				float4 weightedBlend30_g1066 = ( weightedBlendVar30_g1066.x*temp_output_18_0_g1066 + weightedBlendVar30_g1066.y*temp_output_22_0_g1066 + weightedBlendVar30_g1066.z*temp_output_23_0_g1066 + weightedBlendVar30_g1066.w*temp_output_24_0_g1066 );
				float4 break899 = samplingType895;
				float2 temp_output_5_0_g11 = UV0100.xy;
				float4 break102 = SplatIndex44;
				int temp_output_4_0_g11 = (int)break102.x;
				float2 temp_output_9_0_g11 = Mip101;
				float2 temp_output_12_0_g11 = ddx( temp_output_9_0_g11 );
				float2 temp_output_13_0_g11 = ddy( temp_output_9_0_g11 );
				float4 tex2DArrayNode3_g11 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g11,(float)temp_output_4_0_g11, temp_output_12_0_g11, temp_output_13_0_g11 );
				float localStochasticTiling190_g12 = ( 0.0 );
				float2 Input_UV317_g12 = temp_output_5_0_g11;
				float2 UV190_g12 = Input_UV317_g12;
				float2 UV1190_g12 = float2( 0,0 );
				float2 UV2190_g12 = float2( 0,0 );
				float2 UV3190_g12 = float2( 0,0 );
				float W1190_g12 = 0.0;
				float W2190_g12 = 0.0;
				float W3190_g12 = 0.0;
				StochasticTiling( UV190_g12 , UV1190_g12 , UV2190_g12 , UV3190_g12 , W1190_g12 , W2190_g12 , W3190_g12 );
				float Input_Index330_g12 = (float)temp_output_4_0_g11;
				float2 temp_output_358_0_g12 = temp_output_12_0_g11;
				float2 temp_output_359_0_g12 = temp_output_13_0_g11;
				float4 Output_2DArray152_g12 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W1190_g12 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W2190_g12 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g12,Input_Index330_g12, temp_output_358_0_g12, temp_output_359_0_g12 ) * W3190_g12 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g11 = Output_2DArray152_g12;
				#else
				float4 staticSwitch7_g11 = tex2DArrayNode3_g11;
				#endif
				float4 ifLocalVar17_g11 = 0;
				UNITY_BRANCH 
				if( break899.x > 0.0 )
				ifLocalVar17_g11 = staticSwitch7_g11;
				else if( break899.x == 0.0 )
				ifLocalVar17_g11 = tex2DArrayNode3_g11;
				float4 break116 = ifLocalVar17_g11;
				float HeightMap0119 = break116.b;
				float localGetLayerSettings820 = ( 0.0 );
				float4 in0820 = _HeightContrast0;
				float4 in1820 = _HeightContrast1;
				float4 in2820 = _HeightContrast2;
				float4 index820 = SplatIndex44;
				float4 Out0820 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0820,in1820,in2820,index820,Out0820);
				}
				float4 HeightContrast824 = Out0820;
				float4 break834 = HeightContrast824;
				float temp_output_846_0 = ( HeightMap0119 * break834.x );
				#if defined( _QUALITY_FAST )
				float staticSwitch158 = temp_output_846_0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch158 = temp_output_846_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch158 = temp_output_846_0;
				#else
				float staticSwitch158 = temp_output_846_0;
				#endif
				float2 temp_output_5_0_g9 = UV197.xy;
				int temp_output_4_0_g9 = (int)break102.y;
				float2 temp_output_9_0_g9 = Mip101;
				float2 temp_output_12_0_g9 = ddx( temp_output_9_0_g9 );
				float2 temp_output_13_0_g9 = ddy( temp_output_9_0_g9 );
				float4 tex2DArrayNode3_g9 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g9,(float)temp_output_4_0_g9, temp_output_12_0_g9, temp_output_13_0_g9 );
				float localStochasticTiling190_g10 = ( 0.0 );
				float2 Input_UV317_g10 = temp_output_5_0_g9;
				float2 UV190_g10 = Input_UV317_g10;
				float2 UV1190_g10 = float2( 0,0 );
				float2 UV2190_g10 = float2( 0,0 );
				float2 UV3190_g10 = float2( 0,0 );
				float W1190_g10 = 0.0;
				float W2190_g10 = 0.0;
				float W3190_g10 = 0.0;
				StochasticTiling( UV190_g10 , UV1190_g10 , UV2190_g10 , UV3190_g10 , W1190_g10 , W2190_g10 , W3190_g10 );
				float Input_Index330_g10 = (float)temp_output_4_0_g9;
				float2 temp_output_358_0_g10 = temp_output_12_0_g9;
				float2 temp_output_359_0_g10 = temp_output_13_0_g9;
				float4 Output_2DArray152_g10 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W1190_g10 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W2190_g10 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g10,Input_Index330_g10, temp_output_358_0_g10, temp_output_359_0_g10 ) * W3190_g10 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g9 = Output_2DArray152_g10;
				#else
				float4 staticSwitch7_g9 = tex2DArrayNode3_g9;
				#endif
				float4 ifLocalVar17_g9 = 0;
				UNITY_BRANCH 
				if( break899.y > 0.0 )
				ifLocalVar17_g9 = staticSwitch7_g9;
				else if( break899.y == 0.0 )
				ifLocalVar17_g9 = tex2DArrayNode3_g9;
				float4 break115 = ifLocalVar17_g9;
				float HeightMap1118 = break115.b;
				float temp_output_847_0 = ( HeightMap1118 * break834.y );
				#if defined( _QUALITY_FAST )
				float staticSwitch159 = temp_output_847_0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch159 = temp_output_847_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch159 = temp_output_847_0;
				#else
				float staticSwitch159 = temp_output_847_0;
				#endif
				float2 temp_output_5_0_g7 = UV298.xy;
				int temp_output_4_0_g7 = (int)break102.z;
				float2 temp_output_9_0_g7 = Mip101;
				float2 temp_output_12_0_g7 = ddx( temp_output_9_0_g7 );
				float2 temp_output_13_0_g7 = ddy( temp_output_9_0_g7 );
				float4 tex2DArrayNode3_g7 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g7,(float)temp_output_4_0_g7, temp_output_12_0_g7, temp_output_13_0_g7 );
				float localStochasticTiling190_g8 = ( 0.0 );
				float2 Input_UV317_g8 = temp_output_5_0_g7;
				float2 UV190_g8 = Input_UV317_g8;
				float2 UV1190_g8 = float2( 0,0 );
				float2 UV2190_g8 = float2( 0,0 );
				float2 UV3190_g8 = float2( 0,0 );
				float W1190_g8 = 0.0;
				float W2190_g8 = 0.0;
				float W3190_g8 = 0.0;
				StochasticTiling( UV190_g8 , UV1190_g8 , UV2190_g8 , UV3190_g8 , W1190_g8 , W2190_g8 , W3190_g8 );
				float Input_Index330_g8 = (float)temp_output_4_0_g7;
				float2 temp_output_358_0_g8 = temp_output_12_0_g7;
				float2 temp_output_359_0_g8 = temp_output_13_0_g7;
				float4 Output_2DArray152_g8 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W1190_g8 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W2190_g8 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g8,Input_Index330_g8, temp_output_358_0_g8, temp_output_359_0_g8 ) * W3190_g8 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g7 = Output_2DArray152_g8;
				#else
				float4 staticSwitch7_g7 = tex2DArrayNode3_g7;
				#endif
				float4 ifLocalVar17_g7 = 0;
				UNITY_BRANCH 
				if( break899.z > 0.0 )
				ifLocalVar17_g7 = staticSwitch7_g7;
				else if( break899.z == 0.0 )
				ifLocalVar17_g7 = tex2DArrayNode3_g7;
				float4 break114 = ifLocalVar17_g7;
				float HeightMap2120 = break114.b;
				float temp_output_848_0 = ( HeightMap2120 * break834.z );
				#if defined( _QUALITY_FAST )
				float staticSwitch161 = 0.0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch161 = temp_output_848_0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch161 = temp_output_848_0;
				#else
				float staticSwitch161 = 0.0;
				#endif
				float2 temp_output_5_0_g1 = UV399.xy;
				int temp_output_4_0_g1 = (int)break102.w;
				float2 temp_output_9_0_g1 = Mip101;
				float2 temp_output_12_0_g1 = ddx( temp_output_9_0_g1 );
				float2 temp_output_13_0_g1 = ddy( temp_output_9_0_g1 );
				float4 tex2DArrayNode3_g1 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, temp_output_5_0_g1,(float)temp_output_4_0_g1, temp_output_12_0_g1, temp_output_13_0_g1 );
				float localStochasticTiling190_g6 = ( 0.0 );
				float2 Input_UV317_g6 = temp_output_5_0_g1;
				float2 UV190_g6 = Input_UV317_g6;
				float2 UV1190_g6 = float2( 0,0 );
				float2 UV2190_g6 = float2( 0,0 );
				float2 UV3190_g6 = float2( 0,0 );
				float W1190_g6 = 0.0;
				float W2190_g6 = 0.0;
				float W3190_g6 = 0.0;
				StochasticTiling( UV190_g6 , UV1190_g6 , UV2190_g6 , UV3190_g6 , W1190_g6 , W2190_g6 , W3190_g6 );
				float Input_Index330_g6 = (float)temp_output_4_0_g1;
				float2 temp_output_358_0_g6 = temp_output_12_0_g1;
				float2 temp_output_359_0_g6 = temp_output_13_0_g1;
				float4 Output_2DArray152_g6 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV1190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W1190_g6 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV2190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W2190_g6 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _MaskArray, sampler_MaskArray, UV3190_g6,Input_Index330_g6, temp_output_358_0_g6, temp_output_359_0_g6 ) * W3190_g6 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1 = Output_2DArray152_g6;
				#else
				float4 staticSwitch7_g1 = tex2DArrayNode3_g1;
				#endif
				float4 ifLocalVar17_g1 = 0;
				UNITY_BRANCH 
				if( break899.w > 0.0 )
				ifLocalVar17_g1 = staticSwitch7_g1;
				else if( break899.w == 0.0 )
				ifLocalVar17_g1 = tex2DArrayNode3_g1;
				float4 break113 = ifLocalVar17_g1;
				float HeightMap3117 = break113.b;
				#if defined( _QUALITY_FAST )
				float staticSwitch160 = 0.0;
				#elif defined( _QUALITY_BALANCE )
				float staticSwitch160 = 0.0;
				#elif defined( _QUALITY_QUALITY )
				float staticSwitch160 = ( HeightMap3117 * break834.w );
				#else
				float staticSwitch160 = 0.0;
				#endif
				float4 appendResult164 = (float4(staticSwitch158 , staticSwitch159 , staticSwitch161 , staticSwitch160));
				float4 HeightRawCombined0199 = saturate( pow( appendResult164 , 0.5 ) );
				float4 break13_g1066 = HeightRawCombined0199;
				float4 break15_g1066 = temp_output_14_0_g1066;
				float temp_output_53_0_g1066 = ( break13_g1066.x + break15_g1066.x );
				float temp_output_54_0_g1066 = ( break13_g1066.y + break15_g1066.y );
				float temp_output_55_0_g1066 = ( break13_g1066.z + break15_g1066.z );
				float temp_output_56_0_g1066 = ( break13_g1066.w + break15_g1066.w );
				float HeightBlending854 = _HeightBlendStrength;
				float temp_output_79_0_g1066 = ( max( max( max( temp_output_53_0_g1066 , temp_output_54_0_g1066 ) , temp_output_55_0_g1066 ) , temp_output_56_0_g1066 ) - HeightBlending854 );
				float temp_output_63_0_g1066 = max( ( temp_output_53_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_67_0_g1066 = max( ( temp_output_54_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_71_0_g1066 = max( ( temp_output_55_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float temp_output_73_0_g1066 = max( ( temp_output_56_0_g1066 - temp_output_79_0_g1066 ) , 0.0 );
				float Blending197 = _HeightBlending;
				float4 lerpResult78_g1066 = lerp( weightedBlend30_g1066 , ( ( ( temp_output_18_0_g1066 * temp_output_63_0_g1066 ) + ( temp_output_22_0_g1066 * temp_output_67_0_g1066 ) + ( temp_output_23_0_g1066 * temp_output_71_0_g1066 ) + ( temp_output_24_0_g1066 * temp_output_73_0_g1066 ) ) / ( temp_output_63_0_g1066 + temp_output_67_0_g1066 + temp_output_71_0_g1066 + temp_output_73_0_g1066 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1066 = lerpResult78_g1066;
				#else
				float4 staticSwitch77_g1066 = weightedBlend30_g1066;
				#endif
				float4 Albedo0520 = staticSwitch77_g1066;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float4 appendResult179 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise195 = SimpleNoise( appendResult179.xy*_PuddleCoverageNoise );
				simpleNoise195 = simpleNoise195*2 - 1;
				float Snow_Amount174 = _EnviroSnow;
				float Wetness228 = _EnviroWetness;
				#ifdef _PUDDLES_ON
				float staticSwitch258 = saturate( ( ( pow( ( normalWS.y - 0.99 ) , 0.4 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise195 ) ) * saturate( ( 2.0 - Snow_Amount174 ) ) ) * Wetness228 ) ) * 8.0 ) );
				#else
				float staticSwitch258 = 0.0;
				#endif
				float Puddle_Mask264 = staticSwitch258;
				float4 lerpResult524 = lerp( float4( 1,1,1,0 ) , _PuddleColor , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float4 staticSwitch543 = ( Albedo0520 * lerpResult524 );
				#else
				float4 staticSwitch543 = Albedo0520;
				#endif
				float2 temp_cast_63 = (_SnowTiling).xx;
				float2 texCoord232 = packedInput.ase_texcoord7.xy * temp_cast_63 + float2( 0,0 );
				float2 temp_output_5_0_g1067 = texCoord232;
				float localStochasticTiling2_g1068 = ( 0.0 );
				float2 Input_UV145_g1068 = temp_output_5_0_g1067;
				float2 UV2_g1068 = Input_UV145_g1068;
				float2 UV12_g1068 = float2( 0,0 );
				float2 UV22_g1068 = float2( 0,0 );
				float2 UV32_g1068 = float2( 0,0 );
				float W12_g1068 = 0.0;
				float W22_g1068 = 0.0;
				float W32_g1068 = 0.0;
				StochasticTiling( UV2_g1068 , UV12_g1068 , UV22_g1068 , UV32_g1068 , W12_g1068 , W22_g1068 , W32_g1068 );
				float2 temp_output_10_0_g1068 = ddx( Input_UV145_g1068 );
				float2 temp_output_12_0_g1068 = ddy( Input_UV145_g1068 );
				float4 Output_2D293_g1068 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV12_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W12_g1068 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV22_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W22_g1068 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowAlbedo, sampler_SnowAlbedo, UV32_g1068, temp_output_10_0_g1068, temp_output_12_0_g1068 ) * W32_g1068 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1067 = Output_2D293_g1068;
				#else
				float4 staticSwitch7_g1067 = SAMPLE_TEXTURE2D( _SnowAlbedo, sampler_SnowAlbedo, temp_output_5_0_g1067 );
				#endif
				float4 Snow_Albedo522 = staticSwitch7_g1067;
				float4 temp_output_14_0_g1053 = SplatWeights198;
				float4 break898 = samplingType895;
				float2 temp_output_5_0_g1049 = UV0100.xy;
				float4 break391 = SplatIndex44;
				int temp_output_4_0_g1049 = (int)break391.x;
				float2 temp_output_9_0_g1049 = Mip101;
				float2 temp_output_12_0_g1049 = ddx( temp_output_9_0_g1049 );
				float2 temp_output_13_0_g1049 = ddy( temp_output_9_0_g1049 );
				float4 tex2DArrayNode3_g1049 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1049,(float)temp_output_4_0_g1049, temp_output_12_0_g1049, temp_output_13_0_g1049 );
				float localStochasticTiling190_g1050 = ( 0.0 );
				float2 Input_UV317_g1050 = temp_output_5_0_g1049;
				float2 UV190_g1050 = Input_UV317_g1050;
				float2 UV1190_g1050 = float2( 0,0 );
				float2 UV2190_g1050 = float2( 0,0 );
				float2 UV3190_g1050 = float2( 0,0 );
				float W1190_g1050 = 0.0;
				float W2190_g1050 = 0.0;
				float W3190_g1050 = 0.0;
				StochasticTiling( UV190_g1050 , UV1190_g1050 , UV2190_g1050 , UV3190_g1050 , W1190_g1050 , W2190_g1050 , W3190_g1050 );
				float Input_Index330_g1050 = (float)temp_output_4_0_g1049;
				float2 temp_output_358_0_g1050 = temp_output_12_0_g1049;
				float2 temp_output_359_0_g1050 = temp_output_13_0_g1049;
				float4 Output_2DArray152_g1050 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W1190_g1050 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W2190_g1050 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1050,Input_Index330_g1050, temp_output_358_0_g1050, temp_output_359_0_g1050 ) * W3190_g1050 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1049 = Output_2DArray152_g1050;
				#else
				float4 staticSwitch7_g1049 = tex2DArrayNode3_g1049;
				#endif
				float4 ifLocalVar17_g1049 = 0;
				UNITY_BRANCH 
				if( break898.x > 0.0 )
				ifLocalVar17_g1049 = staticSwitch7_g1049;
				else if( break898.x == 0.0 )
				ifLocalVar17_g1049 = tex2DArrayNode3_g1049;
				float localGetLayerSettings368 = ( 0.0 );
				float4 in0368 = _NormalScale00;
				float4 in1368 = _NormalScale01;
				float4 in2368 = _NormalScale02;
				float4 index368 = SplatIndex44;
				float4 Out0368 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0368,in1368,in2368,index368,Out0368);
				}
				float4 NormalScales375 = Out0368;
				float4 break401 = NormalScales375;
				float3 unpack417 = UnpackNormalScale( ifLocalVar17_g1049, break401.x );
				unpack417.z = lerp( 1, unpack417.z, saturate(break401.x) );
				#if defined( _QUALITY_FAST )
				float3 staticSwitch433 = unpack417;
				#elif defined( _QUALITY_BALANCE )
				float3 staticSwitch433 = unpack417;
				#elif defined( _QUALITY_QUALITY )
				float3 staticSwitch433 = unpack417;
				#else
				float3 staticSwitch433 = unpack417;
				#endif
				float4 temp_output_18_0_g1053 = float4( staticSwitch433 , 0.0 );
				float2 temp_output_5_0_g1045 = UV197.xy;
				int temp_output_4_0_g1045 = (int)break391.y;
				float2 temp_output_9_0_g1045 = Mip101;
				float2 temp_output_12_0_g1045 = ddx( temp_output_9_0_g1045 );
				float2 temp_output_13_0_g1045 = ddy( temp_output_9_0_g1045 );
				float4 tex2DArrayNode3_g1045 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1045,(float)temp_output_4_0_g1045, temp_output_12_0_g1045, temp_output_13_0_g1045 );
				float localStochasticTiling190_g1046 = ( 0.0 );
				float2 Input_UV317_g1046 = temp_output_5_0_g1045;
				float2 UV190_g1046 = Input_UV317_g1046;
				float2 UV1190_g1046 = float2( 0,0 );
				float2 UV2190_g1046 = float2( 0,0 );
				float2 UV3190_g1046 = float2( 0,0 );
				float W1190_g1046 = 0.0;
				float W2190_g1046 = 0.0;
				float W3190_g1046 = 0.0;
				StochasticTiling( UV190_g1046 , UV1190_g1046 , UV2190_g1046 , UV3190_g1046 , W1190_g1046 , W2190_g1046 , W3190_g1046 );
				float Input_Index330_g1046 = (float)temp_output_4_0_g1045;
				float2 temp_output_358_0_g1046 = temp_output_12_0_g1045;
				float2 temp_output_359_0_g1046 = temp_output_13_0_g1045;
				float4 Output_2DArray152_g1046 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W1190_g1046 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W2190_g1046 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1046,Input_Index330_g1046, temp_output_358_0_g1046, temp_output_359_0_g1046 ) * W3190_g1046 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1045 = Output_2DArray152_g1046;
				#else
				float4 staticSwitch7_g1045 = tex2DArrayNode3_g1045;
				#endif
				float4 ifLocalVar17_g1045 = 0;
				UNITY_BRANCH 
				if( break898.y > 0.0 )
				ifLocalVar17_g1045 = staticSwitch7_g1045;
				else if( break898.y == 0.0 )
				ifLocalVar17_g1045 = tex2DArrayNode3_g1045;
				float3 unpack416 = UnpackNormalScale( ifLocalVar17_g1045, break401.y );
				unpack416.z = lerp( 1, unpack416.z, saturate(break401.y) );
				#if defined( _QUALITY_FAST )
				float3 staticSwitch434 = unpack416;
				#elif defined( _QUALITY_BALANCE )
				float3 staticSwitch434 = unpack416;
				#elif defined( _QUALITY_QUALITY )
				float3 staticSwitch434 = unpack416;
				#else
				float3 staticSwitch434 = unpack416;
				#endif
				float4 temp_output_22_0_g1053 = float4( staticSwitch434 , 0.0 );
				float4 _Vector3 = float4(0,0,0,0);
				float2 temp_output_5_0_g1051 = UV298.xy;
				int temp_output_4_0_g1051 = (int)break391.z;
				float2 temp_output_9_0_g1051 = Mip101;
				float2 temp_output_12_0_g1051 = ddx( temp_output_9_0_g1051 );
				float2 temp_output_13_0_g1051 = ddy( temp_output_9_0_g1051 );
				float4 tex2DArrayNode3_g1051 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1051,(float)temp_output_4_0_g1051, temp_output_12_0_g1051, temp_output_13_0_g1051 );
				float localStochasticTiling190_g1052 = ( 0.0 );
				float2 Input_UV317_g1052 = temp_output_5_0_g1051;
				float2 UV190_g1052 = Input_UV317_g1052;
				float2 UV1190_g1052 = float2( 0,0 );
				float2 UV2190_g1052 = float2( 0,0 );
				float2 UV3190_g1052 = float2( 0,0 );
				float W1190_g1052 = 0.0;
				float W2190_g1052 = 0.0;
				float W3190_g1052 = 0.0;
				StochasticTiling( UV190_g1052 , UV1190_g1052 , UV2190_g1052 , UV3190_g1052 , W1190_g1052 , W2190_g1052 , W3190_g1052 );
				float Input_Index330_g1052 = (float)temp_output_4_0_g1051;
				float2 temp_output_358_0_g1052 = temp_output_12_0_g1051;
				float2 temp_output_359_0_g1052 = temp_output_13_0_g1051;
				float4 Output_2DArray152_g1052 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W1190_g1052 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W2190_g1052 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1052,Input_Index330_g1052, temp_output_358_0_g1052, temp_output_359_0_g1052 ) * W3190_g1052 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1051 = Output_2DArray152_g1052;
				#else
				float4 staticSwitch7_g1051 = tex2DArrayNode3_g1051;
				#endif
				float4 ifLocalVar17_g1051 = 0;
				UNITY_BRANCH 
				if( break898.z > 0.0 )
				ifLocalVar17_g1051 = staticSwitch7_g1051;
				else if( break898.z == 0.0 )
				ifLocalVar17_g1051 = tex2DArrayNode3_g1051;
				float3 unpack414 = UnpackNormalScale( ifLocalVar17_g1051, break401.z );
				unpack414.z = lerp( 1, unpack414.z, saturate(break401.z) );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch435 = _Vector3;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch435 = float4( unpack414 , 0.0 );
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch435 = float4( unpack414 , 0.0 );
				#else
				float4 staticSwitch435 = _Vector3;
				#endif
				float4 temp_output_23_0_g1053 = staticSwitch435;
				float2 temp_output_5_0_g1047 = UV399.xy;
				int temp_output_4_0_g1047 = (int)break391.w;
				float2 temp_output_9_0_g1047 = Mip101;
				float2 temp_output_12_0_g1047 = ddx( temp_output_9_0_g1047 );
				float2 temp_output_13_0_g1047 = ddy( temp_output_9_0_g1047 );
				float4 tex2DArrayNode3_g1047 = SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, temp_output_5_0_g1047,(float)temp_output_4_0_g1047, temp_output_12_0_g1047, temp_output_13_0_g1047 );
				float localStochasticTiling190_g1048 = ( 0.0 );
				float2 Input_UV317_g1048 = temp_output_5_0_g1047;
				float2 UV190_g1048 = Input_UV317_g1048;
				float2 UV1190_g1048 = float2( 0,0 );
				float2 UV2190_g1048 = float2( 0,0 );
				float2 UV3190_g1048 = float2( 0,0 );
				float W1190_g1048 = 0.0;
				float W2190_g1048 = 0.0;
				float W3190_g1048 = 0.0;
				StochasticTiling( UV190_g1048 , UV1190_g1048 , UV2190_g1048 , UV3190_g1048 , W1190_g1048 , W2190_g1048 , W3190_g1048 );
				float Input_Index330_g1048 = (float)temp_output_4_0_g1047;
				float2 temp_output_358_0_g1048 = temp_output_12_0_g1047;
				float2 temp_output_359_0_g1048 = temp_output_13_0_g1047;
				float4 Output_2DArray152_g1048 = ( ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV1190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W1190_g1048 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV2190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W2190_g1048 ) + ( SAMPLE_TEXTURE2D_ARRAY_GRAD( _NormalArray, sampler_NormalArray, UV3190_g1048,Input_Index330_g1048, temp_output_358_0_g1048, temp_output_359_0_g1048 ) * W3190_g1048 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1047 = Output_2DArray152_g1048;
				#else
				float4 staticSwitch7_g1047 = tex2DArrayNode3_g1047;
				#endif
				float4 ifLocalVar17_g1047 = 0;
				UNITY_BRANCH 
				if( break898.w > 0.0 )
				ifLocalVar17_g1047 = staticSwitch7_g1047;
				else if( break898.w == 0.0 )
				ifLocalVar17_g1047 = tex2DArrayNode3_g1047;
				float3 unpack415 = UnpackNormalScale( ifLocalVar17_g1047, break401.w );
				unpack415.z = lerp( 1, unpack415.z, saturate(break401.w) );
				#if defined( _QUALITY_FAST )
				float4 staticSwitch436 = _Vector3;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch436 = _Vector3;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch436 = float4( unpack415 , 0.0 );
				#else
				float4 staticSwitch436 = _Vector3;
				#endif
				float4 temp_output_24_0_g1053 = staticSwitch436;
				float4 weightedBlendVar30_g1053 = temp_output_14_0_g1053;
				float4 weightedBlend30_g1053 = ( weightedBlendVar30_g1053.x*temp_output_18_0_g1053 + weightedBlendVar30_g1053.y*temp_output_22_0_g1053 + weightedBlendVar30_g1053.z*temp_output_23_0_g1053 + weightedBlendVar30_g1053.w*temp_output_24_0_g1053 );
				float4 break13_g1053 = HeightRawCombined0199;
				float4 break15_g1053 = temp_output_14_0_g1053;
				float temp_output_53_0_g1053 = ( break13_g1053.x + break15_g1053.x );
				float temp_output_54_0_g1053 = ( break13_g1053.y + break15_g1053.y );
				float temp_output_55_0_g1053 = ( break13_g1053.z + break15_g1053.z );
				float temp_output_56_0_g1053 = ( break13_g1053.w + break15_g1053.w );
				float temp_output_79_0_g1053 = ( max( max( max( temp_output_53_0_g1053 , temp_output_54_0_g1053 ) , temp_output_55_0_g1053 ) , temp_output_56_0_g1053 ) - HeightBlending854 );
				float temp_output_63_0_g1053 = max( ( temp_output_53_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_67_0_g1053 = max( ( temp_output_54_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_71_0_g1053 = max( ( temp_output_55_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float temp_output_73_0_g1053 = max( ( temp_output_56_0_g1053 - temp_output_79_0_g1053 ) , 0.0 );
				float4 lerpResult78_g1053 = lerp( weightedBlend30_g1053 , ( ( ( temp_output_18_0_g1053 * temp_output_63_0_g1053 ) + ( temp_output_22_0_g1053 * temp_output_67_0_g1053 ) + ( temp_output_23_0_g1053 * temp_output_71_0_g1053 ) + ( temp_output_24_0_g1053 * temp_output_73_0_g1053 ) ) / ( temp_output_63_0_g1053 + temp_output_67_0_g1053 + temp_output_71_0_g1053 + temp_output_73_0_g1053 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1053 = lerpResult78_g1053;
				#else
				float4 staticSwitch77_g1053 = weightedBlend30_g1053;
				#endif
				float4 Normal0450 = staticSwitch77_g1053;
				float temp_output_395_0 = ( _TimeParameters.x * 0.05 );
				float2 appendResult379 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 temp_output_397_0 = ( appendResult379 * _PuddleWaveTiling );
				float2 panner408 = ( temp_output_395_0 * float2( 1,0 ) + temp_output_397_0);
				float temp_output_406_0 = ( Puddle_Mask264 * ( _PuddleWaveIntensity * Wetness228 ) );
				float3 unpack420 = UnpackNormalScale( SAMPLE_TEXTURE2D( _WaveNormal, sampler_WaveNormal, panner408 ), temp_output_406_0 );
				unpack420.z = lerp( 1, unpack420.z, saturate(temp_output_406_0) );
				float2 panner407 = ( temp_output_395_0 * float2( 0,1 ) + temp_output_397_0);
				float3 unpack419 = UnpackNormalScale( SAMPLE_TEXTURE2D( _WaveNormal, sampler_WaveNormal, panner407 ), temp_output_406_0 );
				unpack419.z = lerp( 1, unpack419.z, saturate(temp_output_406_0) );
				float3 Puddle447 = BlendNormal( unpack420 , unpack419 );
				float4 lerpResult457 = lerp( Normal0450 , float4( Puddle447 , 0.0 ) , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float4 staticSwitch462 = lerpResult457;
				#else
				float4 staticSwitch462 = Normal0450;
				#endif
				float Rain_Intensity303 = _EnviroRainIntensity;
				float temp_output_325_0 = (1.0 + (( _RainFlowStrength * Rain_Intensity303 ) - 0.0) * (-1.0 - 1.0) / (1.0 - 0.0));
				float temp_output_306_0 = ( _TimeParameters.x * 0.05 );
				float4 transform287 = mul(GetObjectToWorldMatrix(),float4( packedInput.ase_texcoord8.xyz , 0.0 ));
				transform287.xyz = GetAbsolutePositionWS((transform287).xyz);
				float2 appendResult298 = (float2(( transform287.z * 0.7 ) , ( transform287.y * 0.2 )));
				float2 panner313 = ( temp_output_306_0 * float2( 0,1 ) + ( appendResult298 * _RainFlowTiling ));
				float2 texCoord285 = packedInput.ase_texcoord7.xy * float2( 10,10 ) + float2( 0,0 );
				float gradientNoise289 = UnityGradientNoise(texCoord285,_RainFlowDistortionScale);
				gradientNoise289 = gradientNoise289*0.5 + 0.5;
				float Distortion307 = ( gradientNoise289 * _RainFlowDistortionStrenght );
				float simpleNoise324 = SimpleNoise( ( panner313 + Distortion307 )*100.0 );
				simpleNoise324 = simpleNoise324*2 - 1;
				float smoothstepResult332 = smoothstep( temp_output_325_0 , 1.0 , simpleNoise324);
				float temp_output_335_0 = ( ( ( normalWS.y - 0.95 ) * -1.0 ) * _RainFlowIntensity );
				float3 temp_cast_99 = (0.3).xxx;
				float3 break337 = ( abs( normalWS ) - temp_cast_99 );
				float lerpResult342 = lerp( 0.0 , ( smoothstepResult332 * temp_output_335_0 ) , break337.x);
				float4 transform286 = mul(GetObjectToWorldMatrix(),float4( packedInput.ase_texcoord8.xyz , 0.0 ));
				transform286.xyz = GetAbsolutePositionWS((transform286).xyz);
				float2 appendResult299 = (float2(( transform286.x * 0.7 ) , ( transform286.y * 0.2 )));
				float2 panner312 = ( temp_output_306_0 * float2( 0,1 ) + ( appendResult299 * _RainFlowTiling ));
				float simpleNoise328 = SimpleNoise( ( panner312 + Distortion307 )*100.0 );
				simpleNoise328 = simpleNoise328*2 - 1;
				float smoothstepResult333 = smoothstep( temp_output_325_0 , 1.0 , simpleNoise328);
				float lerpResult341 = lerp( 0.0 , ( smoothstepResult333 * temp_output_335_0 ) , break337.z);
				float Rain_Distance_Fade340 = ( 1.0 - sqrt( saturate( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _RainDistanceFade ) ) ) );
				float temp_output_366_0 = saturate( ( ( lerpResult342 + lerpResult341 ) * Rain_Distance_Fade340 ) );
				float temp_output_373_0 = ddx( temp_output_366_0 );
				float temp_output_384_0 = ddy( temp_output_366_0 );
				float3 appendResult445 = (float3(temp_output_373_0 , temp_output_384_0 , sqrt( ( ( 1.0 - ( temp_output_373_0 * temp_output_373_0 ) ) - ( temp_output_384_0 * temp_output_384_0 ) ) )));
				float3 normalizeResult449 = normalize( appendResult445 );
				float3 RainFlow453 = normalizeResult449;
				float localRainRipples1_g1054 = ( 0.0 );
				float2 appendResult426 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 UV1_g1054 = ( appendResult426 * _RainDropTiling );
				float AngleOffset1_g1054 = 5.0;
				float lerpResult428 = lerp( 64.0 , 12.0 , Puddle_Mask264);
				float CellDensity1_g1054 = round( lerpResult428 );
				float Time1_g1054 = ( _TimeParameters.x * _RainDropSpeed );
				float temp_output_358_0 = ( _RainDropIntensity * 1.5 );
				float lerpResult365 = lerp( _RainDropIntensity , temp_output_358_0 , Puddle_Mask264);
				#ifdef _PUDDLES_ON
				float staticSwitch372 = lerpResult365;
				#else
				float staticSwitch372 = temp_output_358_0;
				#endif
				float switchResult422 = (((isFrontFace>0)?(( ( ( normalWS.y - 0.7 ) * ( staticSwitch372 * Rain_Intensity303 ) ) * Rain_Distance_Fade340 )):(0.0)));
				float Strength1_g1054 = max( 0.0 , switchResult422 );
				float3 normal1_g1054 = float3( 0,0,0 );
				float Out1_g1054 = 0.0;
				float lerpResult440 = lerp( 5.0 , 8.0 , Puddle_Mask264);
				float pow1_g1054 = lerpResult440;
				float lerpResult439 = lerp( 1.0 , 0.0 , Puddle_Mask264);
				float sin1_g1054 = lerpResult439;
				{
				Rain(UV1_g1054,AngleOffset1_g1054,CellDensity1_g1054,Time1_g1054,Strength1_g1054,pow1_g1054,sin1_g1054,Out1_g1054,normal1_g1054);
				}
				float3 Rain_Drop452 = normal1_g1054;
				#ifdef _RAIN_ON
				float4 staticSwitch468 = float4( BlendNormal( staticSwitch462.xyz , BlendNormal( RainFlow453 , Rain_Drop452 ) ) , 0.0 );
				#else
				float4 staticSwitch468 = staticSwitch462;
				#endif
				float2 temp_output_5_0_g1055 = texCoord232;
				float localStochasticTiling2_g1056 = ( 0.0 );
				float2 Input_UV145_g1056 = temp_output_5_0_g1055;
				float2 UV2_g1056 = Input_UV145_g1056;
				float2 UV12_g1056 = float2( 0,0 );
				float2 UV22_g1056 = float2( 0,0 );
				float2 UV32_g1056 = float2( 0,0 );
				float W12_g1056 = 0.0;
				float W22_g1056 = 0.0;
				float W32_g1056 = 0.0;
				StochasticTiling( UV2_g1056 , UV12_g1056 , UV22_g1056 , UV32_g1056 , W12_g1056 , W22_g1056 , W32_g1056 );
				float2 temp_output_10_0_g1056 = ddx( Input_UV145_g1056 );
				float2 temp_output_12_0_g1056 = ddy( Input_UV145_g1056 );
				float4 Output_2D293_g1056 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV12_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W12_g1056 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV22_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W22_g1056 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowNormal, sampler_SnowNormal, UV32_g1056, temp_output_10_0_g1056, temp_output_12_0_g1056 ) * W32_g1056 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1055 = Output_2D293_g1056;
				#else
				float4 staticSwitch7_g1055 = SAMPLE_TEXTURE2D( _SnowNormal, sampler_SnowNormal, temp_output_5_0_g1055 );
				#endif
				float3 unpack463 = UnpackNormalScale( staticSwitch7_g1055, _SnowNormalScale );
				unpack463.z = lerp( 1, unpack463.z, saturate(_SnowNormalScale) );
				float3 Snow_Normal465 = unpack463;
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( normalWS );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( packedInput.ase_texcoord8.xyz.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( packedInput.ase_texcoord8.xyz.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float4 lerpResult470 = lerp( staticSwitch468 , float4( Snow_Normal465 , 0.0 ) , Snow_Blending247);
				#ifdef _SNOW_ON
				float4 staticSwitch471 = lerpResult470;
				#else
				float4 staticSwitch471 = staticSwitch468;
				#endif
				float4 Normal_Final472 = staticSwitch471;
				float3 ase_worldBitangent = packedInput.ase_texcoord9.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(tangentWS.xyz.x,ase_worldBitangent.x,normalWS.x,tangentWS.xyz.y,ase_worldBitangent.y,normalWS.y,tangentWS.xyz.z,ase_worldBitangent.z,normalWS.z);
				float3 tangentToWorldDir474 = mul( ase_tangentToWorldFast, Normal_Final472.xyz );
				float dotResult497 = dot( V , -( -_DirectionalLightDatas[0].forward + ( tangentToWorldDir474 * _SSSDistortion ) ) );
				float dotResult504 = dot( dotResult497 , _SSSScale );
				float SSS523 = ( saturate( dotResult504 ) * _SSSIntensity );
				float4 lerpResult553 = lerp( staticSwitch543 , ( Snow_Albedo522 + SSS523 ) , Snow_Blending247);
				#ifdef _SNOW_ON
				float4 staticSwitch562 = lerpResult553;
				#else
				float4 staticSwitch562 = staticSwitch543;
				#endif
				float4 Albedo_Final575 = ( staticSwitch562 + ( Wetness228 * -0.02 ) );
				float4 localClipHoles583 = ( Albedo_Final575 );
				float2 uv_TerrainHolesTexture = packedInput.ase_texcoord7.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				float holeClipValue579 = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float Hole583 = holeClipValue579;
				{
				clip(Hole583 == 0.0f ? -1 : 1);
				}
				float4 AlbedoCombined586 = localClipHoles583;
				
				float4 break668 = Normal_Final472;
				float3 appendResult671 = (float3(break668.x , break668.y , ( break668.z + 0.001 )));
				#ifdef _TERRAIN_INSTANCED_PERPIXEL_NORMAL
				float3 staticSwitch665 = appendResult671;
				#else
				float3 staticSwitch665 = appendResult671;
				#endif
				
				float4 temp_output_14_0_g1042 = SplatWeights198;
				float localGetLayerSettings163 = ( 0.0 );
				float4 in0163 = _Metallic00;
				float4 in1163 = _Metallic01;
				float4 in2163 = _Metallic02;
				float4 index163 = SplatIndex44;
				float4 Out0163 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0163,in1163,in2163,index163,Out0163);
				}
				float4 Metallic167 = Out0163;
				float4 break177 = Metallic167;
				float localGetLayerSettings728 = ( 0.0 );
				float4 in0728 = _Occlusion0;
				float4 in1728 = _Occlusion1;
				float4 in2728 = _Occlusion2;
				float4 index728 = SplatIndex44;
				float4 Out0728 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0728,in1728,in2728,index728,Out0728);
				}
				float4 Occlusion729 = Out0728;
				float4 break762 = Occlusion729;
				float localGetLayerSettings977 = ( 0.0 );
				float4 in0977 = _DisplacementMod0;
				float4 in1977 = _DisplacementMod1;
				float4 in2977 = _DisplacementMod2;
				float4 index977 = SplatIndex44;
				float4 Out0977 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0977,in1977,in2977,index977,Out0977);
				}
				float4 displacementModifier978 = Out0977;
				float4 break982 = displacementModifier978;
				float localGetLayerSettings162 = ( 0.0 );
				float4 in0162 = _Smoothness00;
				float4 in1162 = _Smoothness01;
				float4 in2162 = _Smoothness02;
				float4 index162 = SplatIndex44;
				float4 Out0162 = float4( 0,0,0,0 );
				{
				GetLayerValue(in0162,in1162,in2162,index162,Out0162);
				}
				float4 Smoothness166 = Out0162;
				float4 break178 = Smoothness166;
				float4 appendResult205 = (float4(( break116.r + break177.x ) , ( break116.g + break762.x ) , ( HeightMap0119 * break982.x ) , ( break116.a * break178.x )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch221 = appendResult205;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch221 = appendResult205;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch221 = appendResult205;
				#else
				float4 staticSwitch221 = appendResult205;
				#endif
				float4 temp_output_18_0_g1042 = staticSwitch221;
				float4 appendResult206 = (float4(( break177.y + break115.r ) , ( break115.g + break762.y ) , ( HeightMap1118 * break982.y ) , ( break115.a * break178.y )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch222 = appendResult206;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch222 = appendResult206;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch222 = appendResult206;
				#else
				float4 staticSwitch222 = appendResult206;
				#endif
				float4 temp_output_22_0_g1042 = staticSwitch222;
				float4 _Vector4 = float4(0,0,0,0);
				float4 appendResult207 = (float4(( break177.z + break114.r ) , ( break114.g + break762.z ) , ( HeightMap2120 * break982.z ) , ( break114.a * break178.z )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch223 = _Vector4;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch223 = appendResult207;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch223 = appendResult207;
				#else
				float4 staticSwitch223 = _Vector4;
				#endif
				float4 temp_output_23_0_g1042 = staticSwitch223;
				float4 appendResult208 = (float4(( break177.w + break113.r ) , ( break113.g + break762.w ) , ( HeightMap3117 * break982.w ) , ( break113.a * break178.w )));
				#if defined( _QUALITY_FAST )
				float4 staticSwitch224 = _Vector4;
				#elif defined( _QUALITY_BALANCE )
				float4 staticSwitch224 = _Vector4;
				#elif defined( _QUALITY_QUALITY )
				float4 staticSwitch224 = appendResult208;
				#else
				float4 staticSwitch224 = _Vector4;
				#endif
				float4 temp_output_24_0_g1042 = staticSwitch224;
				float4 weightedBlendVar30_g1042 = temp_output_14_0_g1042;
				float4 weightedBlend30_g1042 = ( weightedBlendVar30_g1042.x*temp_output_18_0_g1042 + weightedBlendVar30_g1042.y*temp_output_22_0_g1042 + weightedBlendVar30_g1042.z*temp_output_23_0_g1042 + weightedBlendVar30_g1042.w*temp_output_24_0_g1042 );
				float4 break13_g1042 = HeightRawCombined0199;
				float4 break15_g1042 = temp_output_14_0_g1042;
				float temp_output_53_0_g1042 = ( break13_g1042.x + break15_g1042.x );
				float temp_output_54_0_g1042 = ( break13_g1042.y + break15_g1042.y );
				float temp_output_55_0_g1042 = ( break13_g1042.z + break15_g1042.z );
				float temp_output_56_0_g1042 = ( break13_g1042.w + break15_g1042.w );
				float temp_output_79_0_g1042 = ( max( max( max( temp_output_53_0_g1042 , temp_output_54_0_g1042 ) , temp_output_55_0_g1042 ) , temp_output_56_0_g1042 ) - HeightBlending854 );
				float temp_output_63_0_g1042 = max( ( temp_output_53_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_67_0_g1042 = max( ( temp_output_54_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_71_0_g1042 = max( ( temp_output_55_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float temp_output_73_0_g1042 = max( ( temp_output_56_0_g1042 - temp_output_79_0_g1042 ) , 0.0 );
				float4 lerpResult78_g1042 = lerp( weightedBlend30_g1042 , ( ( ( temp_output_18_0_g1042 * temp_output_63_0_g1042 ) + ( temp_output_22_0_g1042 * temp_output_67_0_g1042 ) + ( temp_output_23_0_g1042 * temp_output_71_0_g1042 ) + ( temp_output_24_0_g1042 * temp_output_73_0_g1042 ) ) / ( temp_output_63_0_g1042 + temp_output_67_0_g1042 + temp_output_71_0_g1042 + temp_output_73_0_g1042 ) ) , Blending197);
				#ifdef _HEIGHTBLEND_ON
				float4 staticSwitch77_g1042 = lerpResult78_g1042;
				#else
				float4 staticSwitch77_g1042 = weightedBlend30_g1042;
				#endif
				float4 Mask0240 = staticSwitch77_g1042;
				float4 break245 = Mask0240;
				float Metallic0569 = break245.x;
				float2 temp_output_5_0_g1043 = texCoord232;
				float localStochasticTiling2_g1044 = ( 0.0 );
				float2 Input_UV145_g1044 = temp_output_5_0_g1043;
				float2 UV2_g1044 = Input_UV145_g1044;
				float2 UV12_g1044 = float2( 0,0 );
				float2 UV22_g1044 = float2( 0,0 );
				float2 UV32_g1044 = float2( 0,0 );
				float W12_g1044 = 0.0;
				float W22_g1044 = 0.0;
				float W32_g1044 = 0.0;
				StochasticTiling( UV2_g1044 , UV12_g1044 , UV22_g1044 , UV32_g1044 , W12_g1044 , W22_g1044 , W32_g1044 );
				float2 temp_output_10_0_g1044 = ddx( Input_UV145_g1044 );
				float2 temp_output_12_0_g1044 = ddy( Input_UV145_g1044 );
				float4 Output_2D293_g1044 = ( ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV12_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W12_g1044 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV22_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W22_g1044 ) + ( SAMPLE_TEXTURE2D_GRAD( _SnowMask, sampler_SnowMask, UV32_g1044, temp_output_10_0_g1044, temp_output_12_0_g1044 ) * W32_g1044 ) );
				#ifdef _STOCHASTIC_ON
				float4 staticSwitch7_g1043 = Output_2D293_g1044;
				#else
				float4 staticSwitch7_g1043 = SAMPLE_TEXTURE2D( _SnowMask, sampler_SnowMask, temp_output_5_0_g1043 );
				#endif
				float4 break244 = staticSwitch7_g1043;
				float Snow_Metallic563 = ( break244.r + _SnowMetallic );
				float lerpResult577 = lerp( Metallic0569 , Snow_Metallic563 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch581 = lerpResult577;
				#else
				float staticSwitch581 = Metallic0569;
				#endif
				float Metallic_Final584 = staticSwitch581;
				
				float Smoothness0540 = break245.w;
				float Snow_Smoothness536 = ( break244.a * _SnowSmoothness );
				float lerpResult559 = lerp( Smoothness0540 , Snow_Smoothness536 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch564 = lerpResult559;
				#else
				float staticSwitch564 = Smoothness0540;
				#endif
				#ifdef _RAIN_ON
				float staticSwitch544 = ( Out1_g1054 * 0.2 );
				#else
				float staticSwitch544 = 0.0;
				#endif
				float RainDropSmoothness555 = staticSwitch544;
				#ifdef _RAIN_ON
				float staticSwitch545 = ( temp_output_366_0 * _RainFlowSmoothnessBoost );
				#else
				float staticSwitch545 = 0.0;
				#endif
				float RainFlowSmoothness557 = staticSwitch545;
				float Smoothness_Final585 = saturate( ( ( staticSwitch564 + ( ( ( _WetnessBoost * Wetness228 ) + saturate( ( Puddle_Mask264 - 0.2 ) ) ) * ( 1.0 - Snow_Blending247 ) ) ) + ( RainDropSmoothness555 + RainFlowSmoothness557 ) ) );
				
				float Occlusion0589 = break245.y;
				float Snow_Occlusion588 = break244.g;
				float lerpResult593 = lerp( Occlusion0589 , Snow_Occlusion588 , Snow_Blending247);
				#ifdef _SNOW_ON
				float staticSwitch594 = lerpResult593;
				#else
				float staticSwitch594 = Occlusion0589;
				#endif
				float Occlusion_Final595 = staticSwitch594;
				
				float Alpha1008 = holeClipValue579;
				
				surfaceDescription.BaseColor = AlbedoCombined586.xyz;
				surfaceDescription.Normal = staticSwitch665;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = Metallic_Final584;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = Smoothness_Final585;
				surfaceDescription.Occlusion = Occlusion_Final595;
				surfaceDescription.Alpha = Alpha1008;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceDescription.TransmissionMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif

				#ifdef ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				#ifdef UNITY_VIRTUAL_TEXTURING
				surfaceDescription.VTPackedFeedback = float4(1.0f,1.0f,1.0f,1.0f);
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);

				PreLightData preLightData = GetPreLightData(V, posInput, bsdfData);

				outColor = float4(0.0, 0.0, 0.0, 0.0);

				#ifdef DEBUG_DISPLAY
				#ifdef OUTPUT_SPLIT_LIGHTING
					outDiffuseLighting = float4(0, 0, 0, 1);
					ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#endif

			    bool viewMaterial = GetMaterialDebugColor(outColor, input, builtinData, posInput, surfaceData, bsdfData);

				if (!viewMaterial)
				{
					if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_DIFFUSE_COLOR || _DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_SPECULAR_COLOR)
					{
						float3 result = float3(0.0, 0.0, 0.0);
						GetPBRValidatorDebug(surfaceData, result);
						outColor = float4(result, 1.0f);
					}
					else if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
					{
						float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
						outColor = result;
					}
					else
                #endif
					{
                #ifdef _SURFACE_TYPE_TRANSPARENT
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_TRANSPARENT;
                #else
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_OPAQUE;
                #endif
						LightLoopOutput lightLoopOutput;
						LightLoop(V, posInput, preLightData, bsdfData, builtinData, featureFlags, lightLoopOutput);

						// Alias
						float3 diffuseLighting = lightLoopOutput.diffuseLighting;
						float3 specularLighting = lightLoopOutput.specularLighting;

						diffuseLighting *= GetCurrentExposureMultiplier();
						specularLighting *= GetCurrentExposureMultiplier();

                #ifdef OUTPUT_SPLIT_LIGHTING
						if (_EnableSubsurfaceScattering != 0 && ShouldOutputSplitLighting(bsdfData))
						{
							outColor = float4(specularLighting, 1.0);
							outDiffuseLighting = float4(TagLightingForSSS(diffuseLighting), 1.0);
						}
						else
						{
							outColor = float4(diffuseLighting + specularLighting, 1.0);
							outDiffuseLighting = float4(0, 0, 0, 1);
						}
						ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
                #else
						outColor = ApplyBlendMode(diffuseLighting, specularLighting, builtinData.opacity);
						outColor = EvaluateAtmosphericScattering(posInput, V, outColor);
                #endif

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						float4 VPASSpositionCS = float4(packedInput.vpassPositionCS.xy, 0.0, packedInput.vpassPositionCS.z);
						float4 VPASSpreviousPositionCS = float4(packedInput.vpassPreviousPositionCS.xy, 0.0, packedInput.vpassPreviousPositionCS.z);
						bool forceNoMotion = any(unity_MotionVectorsParams.yw == 0.0);
                #if defined(HAVE_VFX_MODIFICATION) && !VFX_FEATURE_MOTION_VECTORS
                        forceNoMotion = true;
                #endif
				        if (!forceNoMotion)
						{
							float2 motionVec = CalculateMotionVector(VPASSpositionCS, VPASSpreviousPositionCS);
							EncodeMotionVector(motionVec * 0.5, outMotionVec);
							outMotionVec.zw = 1.0;
						}
				#endif
				}

				#ifdef DEBUG_DISPLAY
				}
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

                #ifdef UNITY_VIRTUAL_TEXTURING
				    float vtAlphaValue = builtinData.opacity;
                    #if defined(HAS_REFRACTION) && HAS_REFRACTION
					vtAlphaValue = 1.0f - bsdfData.transmittanceMask;
                #endif
				outVTFeedback = PackVTFeedbackWithAlpha(builtinData.vtPackedFeedback, input.positionSS.xy, vtAlphaValue);
                #endif

			}
			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
        {
			
            Name "ScenePickingPass"
            Tags { "LightMode"="Picking" }

            Cull [_CullMode]

            HLSLPROGRAM
			#pragma shader_feature_local_fragment _ _DISABLE_DECALS
			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma shader_feature_local _ _DOUBLESIDED_ON
			#pragma shader_feature_local _ _ALPHATEST_ON
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 140011
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma editor_sync_compilation
            #pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define VARYINGS_NEED_TANGENT_TO_WORLD

            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

            //#if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            //#define FRAG_INPUTS_ENABLE_STRIPPING
            //#endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
                #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif

            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
                #define RAYTRACING_SHADER_GRAPH_LOW
            #endif

            #ifndef SHADER_UNLIT
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			    #define ASE_NEED_CULLFACE 1
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

            #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
            #endif

            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif

            #ifndef DEBUG_DISPLAY
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif

            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
	
            CBUFFER_START( UnityPerMaterial )
			float4 _ColorTint3;
			float4 _ColorTint2;
			float4 _ColorTint4;
			float4 _ColorTint5;
			float4 _ColorTint6;
			float4 _ColorTint7;
			float4 _ColorTint8;
			float4 _ColorTint9;
			float4 _ColorTint10;
			float4 _ColorTint11;
			float4 _HeightContrast0;
			float4 _HeightContrast1;
			float4 _HeightContrast2;
			float4 _DisplacementMod0;
			float4 _Occlusion2;
			float4 _PuddleColor;
			float4 _Occlusion1;
			float4 _Occlusion0;
			float4 _Metallic02;
			float4 _Metallic01;
			float4 _NormalScale00;
			float4 _NormalScale01;
			float4 _NormalScale02;
			float4 _Metallic00;
			float4 _ColorTint1;
			float4 _TerrainHolesTexture_ST;
			float4 _ColorTint0;
			float4 _LayerScaleOffset11;
			float4 _Smoothness02;
			float4 _Smoothness01;
			float4 _Smoothness00;
			float4 _DisplacementMod2;
			float4 _Control_ST;
			float4 _Control1_ST;
			float4 _Control2_ST;
			float4 _SamplingType0;
			float4 _SamplingType1;
			float4 _DisplacementMod1;
			float4 _LayerScaleOffset0;
			float4 _SamplingType2;
			float4 _LayerScaleOffset2;
			float4 _LayerScaleOffset3;
			float4 _LayerScaleOffset4;
			float4 _LayerScaleOffset5;
			float4 _LayerScaleOffset6;
			float4 _LayerScaleOffset7;
			float4 _LayerScaleOffset8;
			float4 _LayerScaleOffset9;
			float4 _LayerScaleOffset10;
			float4 _LayerScaleOffset1;
			float _SSSDistortion;
			float _SnowNormalScale;
			float _RainDropIntensity;
			float _SSSScale;
			float _TessellationMaxDistance;
			float _RainDropSpeed;
			float _SnowMetallic;
			float _SnowSmoothness;
			float _SSSIntensity;
			float _RainDropTiling;
			float _HeightBlendStrength;
			float _RainFlowIntensity;
			float _TessellationMinDistance;
			float _TessellationFactor;
			float _SnowDisplacement;
			float _EnviroSnow;
			float _SnowSlopePower;
			float _SnowHeightBlending;
			float _MipDistanceBlending;
			float _WetnessBoost;
			float _HeightBlending;
			float _RainDistanceFade;
			float _PuddleIntensity;
			float _EnviroWetness;
			float _SnowTiling;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _RainFlowStrength;
			float _EnviroRainIntensity;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _PuddleCoverageNoise;
			float _RainFlowSmoothnessBoost;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			    float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			    float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			    float _TessPhongStrength;
			    float _TessValue;
			    float _TessMin;
			    float _TessMax;
			    float _TessEdgeLength;
			    float _TessMaxDisp;
			#endif
			CBUFFER_END

            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif

            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif

			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _SNOW_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap
			#include "EnviroInclude.hlsl"


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float3 previousPositionOS : TEXCOORD4;
				float3 precomputedVelocity : TEXCOORD5;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2;
				float4 uv1 : TEXCOORD3;
				float4 uv2 : TEXCOORD4;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 vpassPositionCS : TEXCOORD5;
					float3 vpassPreviousPositionCS : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			void GetSplats( float4 in0, float4 in1, float4 in2, out float4 Out1, out float4 Out0 )
			{
				GetSplatsWeights(in0,in1,in2,Out0,Out1);
			}
			
			void GetUVS( float4 in0, float4 in1, float4 in2, float4 in3, float4 in4, float4 in5, float4 in6, float4 in7, float4 in8, float4 in9, float4 in10, float4 in11, float4 index, out float4 Out0, out float4 Out1, out float4 Out2, out float4 Out3 )
			{
				GetLayerUV(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,index,Out0,Out1,Out2,Out3);
			}
			
			void GetLayerSettings( float4 in0, float4 in1, float4 in2, float4 index, out float4 Out0 )
			{
				GetLayerValue(in0,in1,in2,index,Out0);
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			// Get Surface And BuiltinData
			void GetSurfaceAndBuiltinData(PickingSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
                    LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif  
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);

				#ifdef _ALPHATEST_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
                    DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
				#endif

				#ifdef _DEPTHOFFSET_ON
                    ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
				#endif

				float3 bentNormalWS;
                //BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				#ifdef _DEPTHOFFSET_ON
                    builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

                #ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

                #ifdef UNITY_VIRTUAL_TEXTURING
                    builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
                    builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
                    builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

                builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);

            }

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				inputMesh = ApplyMeshModification(inputMesh);
				float3 appendResult261 = (float3(_SnowDisplacement , _SnowDisplacement , _SnowDisplacement));
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 appendResult202 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise216 = SimpleNoise( appendResult202*10.0 );
				float Snow_Amount174 = _EnviroSnow;
				float clampResult215 = clamp( Snow_Amount174 , 0.0 , 1.0 );
				float lerpResult231 = lerp( 0.0 , simpleNoise216 , clampResult215);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float HeightMask238 = saturate(pow(((lerpResult231*( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) ))*4)+(( ( 2.0 * pow( normalizedWorldNormal.y , _SnowSlopePower ) ) * saturate( ( sqrt( ( inputMesh.positionOS.y * 0.1 ) ) * Snow_Amount174 ) ) )*2),_SnowHeightBlending));
				float Snow_Blending247 = saturate( HeightMask238 );
				float3 Snow_Displacement272 = ( ( appendResult261 * ase_worldNormal ) * ( Snow_Blending247 * Snow_Amount174 ) );
				#ifdef _SNOW_ON
				float3 staticSwitch279 = Snow_Displacement272;
				#else
				float3 staticSwitch279 = float3(0,0,0);
				#endif
				float3 DisplacementFinal282 = ( staticSwitch279 + float3(0,0,0) );
				
				float4 appendResult660 = (float4(cross( inputMesh.normalOS , float3(0,0,1) ) , -1.0));
				
				outputPackedVaryingsMeshToPS.ase_texcoord7.xy = inputMesh.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord7.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  DisplacementFinal282;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = appendResult660;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}
				#endif

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.normalWS.xyz = normalWS;
				outputPackedVaryingsMeshToPS.tangentWS.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.uv1.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.uv2.xyzw = inputMesh.uv2;

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outputPackedVaryingsMeshToPS.vpassPositionCS = float3(VPASSpositionCS.xyw);
					outputPackedVaryingsMeshToPS.vpassPreviousPositionCS = float3(VPASSpreviousPositionCS.xyw);
				#endif
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target2
			#elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target1
			#else
			#define SV_TARGET_DECAL SV_Target0
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#if defined(SCENESELECTIONPASS) || defined(SCENEPICKINGPASS)
						, out float4 outColor : SV_Target0
						#else
							#ifdef WRITE_MSAA_DEPTH
							, out float4 depthColor : SV_Target0
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target1
								#endif
							#else
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target0
								#endif
							#endif

							#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
							, out float4 outDecalBuffer : SV_TARGET_DECAL
							#endif
						#endif

						#if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
						, out float outputDepth : DEPTH_OFFSET_SEMANTIC
						#endif
						
					)
			{
			UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
			UNITY_SETUP_INSTANCE_ID(packedInput);

				float3 positionRWS = packedInput.positionRWS.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				PickingSurfaceDescription surfaceDescription = (PickingSurfaceDescription)0;
				float2 uv_TerrainHolesTexture = packedInput.ase_texcoord7.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				float holeClipValue579 = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float Alpha1008 = holeClipValue579;
				
				surfaceDescription.Alpha = Alpha1008;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold =  _AlphaCutoff;
				#endif

				outColor = _SelectionID;
			}

            ENDHLSL
		}

        Pass
        {

            Name "FullScreenDebug"
            Tags 
			{ 
				"LightMode" = "FullScreenDebug" 
            }

            Cull [_CullMode]
			ZTest LEqual
			ZWrite Off

            HLSLPROGRAM
            /*ase_pragma_before*/
            #pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex Vert
			#pragma fragment Frag

            #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT

			#define SHADERPASS SHADERPASS_FULL_SCREEN_DEBUG

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
		    #define OUTPUT_SPLIT_LIGHTING
		    #endif

            #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
            #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
				#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif

            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

            struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : INSTANCEID_SEMANTIC;
				#endif
			};

			struct VaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : CUSTOM_INSTANCE_ID;
				#endif
			};

			struct VertexDescriptionInputs
			{
				 float3 ObjectSpaceNormal;
				 float3 ObjectSpaceTangent;
				 float3 ObjectSpacePosition;
			};

			struct SurfaceDescriptionInputs
			{
				 float3 TangentSpaceNormal;
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : CUSTOM_INSTANCE_ID;
				#endif
			};

            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
			{
				PackedVaryingsMeshToPS output;
				ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
				output.positionCS = input.positionCS;
				#if UNITY_ANY_INSTANCING_ENABLED
				output.instanceID = input.instanceID;
				#endif
				return output;
			}

			VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
			{
				VaryingsMeshToPS output;
				output.positionCS = input.positionCS;
				#if UNITY_ANY_INSTANCING_ENABLED
				output.instanceID = input.instanceID;
				#endif
				return output;
			}

            struct VertexDescription
			{
				float3 Position;
				float3 Normal;
				float3 Tangent;
			};

			VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
			{
				VertexDescription description = (VertexDescription)0;
				description.Position = IN.ObjectSpacePosition;
				description.Normal = IN.ObjectSpaceNormal;
				description.Tangent = IN.ObjectSpaceTangent;
				return description;
			}

            struct SurfaceDescription
			{
				float3 BaseColor;
				float3 Emission;
				float Alpha;
				float3 BentNormal;
				float Smoothness;
				float Occlusion;
				float3 NormalTS;
				float Metallic;
			};

			SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
			{
				SurfaceDescription surface = (SurfaceDescription)0;
				surface.BaseColor = IsGammaSpace() ? float3(0.5, 0.5, 0.5) : SRGBToLinear(float3(0.5, 0.5, 0.5));
				surface.Emission = float3(0, 0, 0);
				surface.Alpha = 1;
				surface.BentNormal = IN.TangentSpaceNormal;
				surface.Smoothness = 0.5;
				surface.Occlusion = 1;
				surface.NormalTS = IN.TangentSpaceNormal;
				surface.Metallic = 0;
				return surface;
			}

			VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
			{
				VertexDescriptionInputs output;
				ZERO_INITIALIZE(VertexDescriptionInputs, output);

				output.ObjectSpaceNormal =                          input.normalOS;
				output.ObjectSpaceTangent =                         input.tangentOS.xyz;
				output.ObjectSpacePosition =                        input.positionOS;

				return output;
			}

			AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters  )
			{
				VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);

				VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);

				input.positionOS = vertexDescription.Position;
				input.normalOS = vertexDescription.Normal;
				input.tangentOS.xyz = vertexDescription.Tangent;
				return input;
			}

			FragInputs BuildFragInputs(VaryingsMeshToPS input)
			{
				FragInputs output;
				ZERO_INITIALIZE(FragInputs, output);

				output.tangentToWorld = k_identity3x3;
				output.positionSS = input.positionCS; // input.positionCS is SV_Position

				return output;
			}

			FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
			{
				UNITY_SETUP_INSTANCE_ID(input);
				VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
				return BuildFragInputs(unpacked);
			}

			#define DEBUG_DISPLAY
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/FullScreenDebug.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/VertMesh.hlsl"

			PackedVaryingsType Vert(AttributesMesh inputMesh)
			{
				VaryingsType varyingsType;
				varyingsType.vmesh = VertMesh(inputMesh);
				return PackVaryingsType(varyingsType);
			}

			#if !defined(_DEPTHOFFSET_ON)
			[earlydepthstencil]
			#endif
			void Frag(PackedVaryingsToPS packedInput)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
				FragInputs input = UnpackVaryingsToFragInputs(packedInput);

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz);

			#ifdef PLATFORM_SUPPORTS_PRIMITIVE_ID_IN_PIXEL_SHADER
				if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_QUAD_OVERDRAW)
				{
					IncrementQuadOverdrawCounter(posInput.positionSS.xy, input.primitiveID);
				}
			#endif
			}
            ENDHLSL
        }
		
	}
	
	CustomEditor "Rendering.HighDefinition.LightingShaderGraphGUI"
	
	Fallback Off
}