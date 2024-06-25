#version 460 core

layout(location = 0) out vec4 outColor0;

in vec4 skyColor;
in vec2 texCoord;

uniform sampler2D gtexture;

void main() { outColor0 = texture(gtexture, texCoord) * skyColor; }
