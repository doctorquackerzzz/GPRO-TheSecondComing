#version 450

in vec2 vTexcoord;

layout (binding = 0) uniform sampler2D uTex;

layout (location = 0) out vec4 cFragColor;

void main()
{
	cFragColor = texture(uTex, vTexcoord);

}