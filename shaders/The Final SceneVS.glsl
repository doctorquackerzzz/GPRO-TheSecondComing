#version 450

/*
File name: The Final Scene_VS.glsl
Name: Nico Omenetto
Purpose: To bind all the shaderpasses into one render texture

RESOURCES: Lab 8's demonstration of render texture linking (CLASS GIVEN)


*/
//layouts
layout (location = 0) in vec4 aPos;

//output varying
out vec2 vTexcoord;

void main()
{
	gl_Position = aPos;
	vTexcoord = aPos.xy + 0.5 + 0.5;

}
