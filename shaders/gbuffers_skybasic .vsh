#version 460 core

uniform vec3 chunkOffset;
uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;

void main() { gl_Position = projectionMatrix * modelViewMatrix * vec4(chunkOffset, 1); }
