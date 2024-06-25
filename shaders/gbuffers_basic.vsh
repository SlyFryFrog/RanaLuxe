#version 460 core

in vec2 vaUV0;
in ivec2 vaUV2;
in vec3 vaPosition;
in vec4 vaColor;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;

out vec2 texCoord;  // Passes to fsh
out vec4 foliageColor;
out vec2 lightMapCoords;

void main()
{
    texCoord = vaUV0;
    lightMapCoords = vaUV2 * (1.0 / 256.0) + (1.0 / 32.0);
    foliageColor = vaColor;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(vaPosition, 1); // Perspective
}
