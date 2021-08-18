#version 450

layout (location = 0) in vec4 aPosition;
layout (location = 1) in vec2 aTexcoord;
uniform mat4 MVP;
uniform mat4 ModelViewMatrix;
out vec2 vTexcoord;
out vec4 vPos;

void main()
{
	vPos = ModelViewMatrix * aPosition;
	gl_Position = MVP * vPos;
	vTexcoord = aPosition.xy * 1 +.5;
	

}