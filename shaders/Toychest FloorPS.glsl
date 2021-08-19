#version 450

/*
File name: Podiums_PS.glsl
Name: Nico Omenetto
Purpose: To display the geometry shader enabled objects via wooden pedestals for displayment

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>

WOOD TEXTURE PICTURE: <https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fwood%2520texture%2F&psig=AOvVaw09ESTXasP9ZDqqaAbBR0_3&ust=1629424547673000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCOi-mMz9u_ICFQAAAAAdAAAAABAD>

Lab 8's demonstration of binding layouts and textures (CLASS)

*/

//layouts
layout (binding = 0) uniform sampler2D uTex;
layout (location = 0) out vec4 fragColor;

//input varyings
in vec2 vTexcoord;

void main()
{
	fragColor = texture(uTex, vTexcoord);

}