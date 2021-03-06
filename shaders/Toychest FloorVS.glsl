#version 450
/*
File name: Podiums_VS.glsl
Name: Nico Omenetto
Purpose: To display the geometry shader enabled objects via wooden pedestals for displayment

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>

WOOD TEXTURE PICTURE: <https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fwood%2520texture%2F&psig=AOvVaw09ESTXasP9ZDqqaAbBR0_3&ust=1629424547673000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCOi-mMz9u_ICFQAAAAAdAAAAABAD>

Lab 8's demonstration of binding layouts and textures (CLASS)
*/

//layouts
layout (location = 0) in vec4 aPosition;
layout (location = 1) in vec2 aTexcoord;

//uniforms
uniform mat4 MVP;
uniform mat4 ModelViewMatrix;

//output varyings
out vec2 vTexcoord;
out vec4 vPos;

void main()
{
	vPos = ModelViewMatrix * aPosition;
	gl_Position = MVP * vPos;
	vTexcoord = aPosition.xy * 1 +.5;
}