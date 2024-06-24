#version 460 core

in vec3 vaPosition;
in vec2 vaUV0;
in vec4 vaColor;
in ivec2 vaUV2;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;
uniform vec3 chunkOffset;

out vec2 texCoord;  // Passes to fsh
out vec4 foliageColor;
out ivec2 lightMapCoords;

void main()
{
    texCoord = vaUV0;
    foliageColor = vaColor;
    lightMapCoords = vaUV2;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(vaPosition + chunkOffset, 1); // Perspective
}