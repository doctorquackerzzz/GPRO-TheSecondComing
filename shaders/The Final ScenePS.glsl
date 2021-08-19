#version 450
/*
File name: The Final Scene_PS.glsl
Name: Nico Omenetto
Purpose: To bind all the shaderpasses into one render texture

RESOURCES: Lab 8's demonstration of render texture linking (CLASS GIVEN)


*/
//layouts
layout (binding = 0) uniform sampler2D uTex;
layout (location = 0) out vec4 cFragColor;

//input varying
in vec2 vTexcoord;

void main()
{
	cFragColor = texture(uTex, vTexcoord);

}
