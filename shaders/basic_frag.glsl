#version 460 core

uniform sampler2D gtexture;

/* DRAWBUFFERS:0 */
layout(location = 0) out vec4 outColor0;

in vec2 texCoord;

void main()
{
    vec4 outputColor = texture(gtexture, texCoord);
    
    if (outputColor.a < 0.1)
    {
        discard;
    }

    outColor0 = outputColor;
}