#version 460 core

in vec3 vaPosition;
in vec2 vaUV0;
in vec4 vaColor;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;

out vec2 texCoord;  // Passes to fsh
out vec4 foliageColor;

void main()
{
    texCoord = vaUV0;
    foliageColor = vaColor;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(vaPosition, 1); // Perspective
}