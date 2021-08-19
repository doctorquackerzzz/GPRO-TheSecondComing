#version 450
/*
File name: Background Tex_PS.glsl
Name: Nico Omenetto
Purpose: To provide a texturized background without no black screen behind, so that theres more displayment of the geometry shader enabled objects

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>

Background Picture: <https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fbackgrounds%2Fcolors%2Fdark&psig=AOvVaw1wLX7Q05owb8ccwv1kwvwv&ust=1629413180340000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCIik4p_Tu_ICFQAAAAAdAAAAABAD>

Lab 8's demonstration of binding layouts and textures (CLASS GIVEN)

*/

//layouts
layout (binding = 0) uniform sampler2D uTex;
layout (location = 0) out vec4 fragColor;

//varying inputs
in vec2 vTexcoord;

void main()
{
	fragColor = texture(uTex, vTexcoord);

}