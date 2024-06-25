#version 460 core

uniform sampler2D gtexture;
uniform sampler2D lightmap;

/* DRAWBUFFERS:0 */
layout(location = 0) out vec4 outColor0;

in vec2 texCoord;
in vec2 lightMapCoords;
in vec4 foliageColor;

void main()
{
	vec3 lightColor = texture(lightmap, lightMapCoords).rgb;
	
	vec4 outputColorData = texture(gtexture, texCoord);
	vec3 outputColor = outputColorData.rgb * foliageColor.rgb * lightColor;
	float transparency = outputColorData.a;

	if (transparency < 0.1)
	{
		discard;
	}

	outColor0 = vec4(outputColor, transparency);
}
