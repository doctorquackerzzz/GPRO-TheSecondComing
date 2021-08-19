#version 450
/*
File name: Vertex Manip Geo (Negative Manipulation)_VS.glsl
Name: Nico Omenetto
Purpose: To display the effect of what manipulating an emitted vector negatively would have on a geometry shader enabled object

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>


*/

//layouts
layout (location = 0 ) in vec3 aPosition;

//output varyings
out vec4 color;
out vec3 VPosition;

//uniforms
uniform mat4 ModelViewMatrix;
uniform mat4 MVP;



void main()
{
 
 VPosition = vec3(ModelViewMatrix * vec4(aPosition,1.0));
 gl_Position = MVP * vec4(VPosition,1.0);
}