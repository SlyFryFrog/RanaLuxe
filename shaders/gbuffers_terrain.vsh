#version 460

in vec3 vaPosition;
in vec2 vaUV0;

uniform vec3 chunkOffSet;
uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;

out vec2 texCoord;  // Passes to fsh

void main()
{
    texCoord = vaUV0;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(chunkOffSet, vaPosition, 1); // Perspective
}