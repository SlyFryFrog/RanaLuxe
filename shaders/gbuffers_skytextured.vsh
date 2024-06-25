#version 460 core

in vec2 vaUV0;
in vec4 vaColor;

uniform vec3 chunkOffset;
uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;

out vec2 texCoord;
out vec4 skyColor;

void main()
{
	texCoord = vaUV0;
	skyColor = vec4(0.0);
	gl_Position = projectionMatrix * modelViewMatrix * vec4(chunkOffset, 1);
}
