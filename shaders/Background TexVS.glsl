#version 450

/*
File name: Background Tex_VS.glsl
Name: Nico Omenetto
Purpose: To provide a texturized background without no black screen behind, so that theres more displayment of the geometry shader enabled objects

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>

Background Picture: <https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fbackgrounds%2Fcolors%2Fdark&psig=AOvVaw1wLX7Q05owb8ccwv1kwvwv&ust=1629413180340000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCIik4p_Tu_ICFQAAAAAdAAAAABAD>

Lab 8's demonstration of binding layouts and textures (CLASS GIVEN)

*/

//layouts
layout (location = 0) in vec4 aPosition;
layout (location = 1) in vec2 aTexcoord;

//uniforms
uniform mat4 MVP;
uniform mat4 ModelViewMatrix;

//outputs
out vec2 vTexcoord;
out vec4 vPos;

void main()
{
	vPos = ModelViewMatrix * aPosition;
	gl_Position = MVP * vPos;
	vTexcoord = aPosition.xy * 1 +.5;
}