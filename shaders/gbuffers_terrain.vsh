#version 460 core

in vec2 vaUV0;
in ivec2 vaUV2;
in vec3 vaPosition;
in vec4 vaColor;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;
uniform vec3 chunkOffset;

out vec2 texCoord;
out vec2 lightMapCoords;
out vec4 foliageColor;

void main()
{
    texCoord = vaUV0;
    foliageColor = vaColor;
    lightMapCoords = vaUV2 * (1.0 / 256.0) + (1.0 / 32.0);
    gl_Position = projectionMatrix * modelViewMatrix * vec4(vaPosition + chunkOffset, 1); // Perspective
}
