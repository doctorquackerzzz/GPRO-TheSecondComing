#version 450

layout (location = 0) in vec4 aPos;

out vec2 vTexcoord;

void main()
{
	gl_Position = aPos;
	vTexcoord = aPos.xy + 0.5 + 0.5;

}
