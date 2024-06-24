#version 460 core

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;
uniform vec3 chunkOffset;

void main() { gl_Position = projectionMatrix * modelViewMatrix * vec4(chunkOffset, 1); }