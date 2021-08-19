#version 450

/*
File name: Vertex Manipulation Geo (Positive Manip)_VS.glsl
Name: Nico Omenetto
Purpose: To display what effects would occur if an emitted vertex were to be changed by a uniform vector

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>


*/

//layouts
layout (location = 0 ) in vec3 aPosition;

//output varyings
out vec4 color;
out vec3 VPosition;

//uniform matrices
uniform mat4 ModelViewMatrix;
uniform mat4 MVP;



void main()
{
 
 VPosition = vec3(ModelViewMatrix * vec4(aPosition,1.0));
 gl_Position = MVP * vec4(VPosition,1.0);
}