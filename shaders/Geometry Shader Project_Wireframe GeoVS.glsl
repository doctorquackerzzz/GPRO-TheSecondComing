#version 450

/*
File name: Wireframe Geo_VS.glsl
Name: Nico Omenetto
Purpose: To display the effects of the Geometry Shader to display the wireframe of an object

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>


*/

//layouts
layout (location = 0) in vec4 aPos;

//varyings
out vec4 vPos;

//uniforms
uniform mat4 ModelViewMatrix;
uniform mat4 ViewMatrix;
uniform mat4 ProjectionMatrix;
uniform mat4 MVP;

void main()
{
	//the varying position is equal to the Model View Matrix times the attribute layout position
	vPos = ModelViewMatrix * aPos;
	
	//gl_Position is equal to the view-Projection matrix times the varying position
	gl_Position = MVP*vPos;
}