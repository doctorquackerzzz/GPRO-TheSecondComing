#version 450
layout (location = 0) in vec4 aPos;

out vec4 vPos;

uniform mat4 ModelViewMatrix;
uniform mat4 ViewMatrix;
uniform mat4 ProjectionMatrix;
uniform mat4 MVP;

void main()
{
	vPos = ModelViewMatrix * aPos;
	gl_Position = MVP*vPos;
}