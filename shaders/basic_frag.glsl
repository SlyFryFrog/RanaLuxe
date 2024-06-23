#version 460 core

uniform sampler2D gtexture;

/* DRAWBUFFERS:0 */
layout(location = 0) out vec4 outColor0;

in vec2 texCoord;
in vec4 foliageColor;

void main()
{
    vec4 outputColorData = texture(gtexture, texCoord);
    vec3 outputColor = outputColorData.rgb * foliageColor.rgb;
    float transparency = outputColorData.a;

    if (transparency < 0.1)
    {
        discard;
    }

    outColor0 = vec4(outputColor, transparency);
}