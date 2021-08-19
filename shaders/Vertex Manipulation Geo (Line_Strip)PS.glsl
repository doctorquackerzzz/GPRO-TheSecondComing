#version 450
/*
File name: Vertex Manipulation Geo (Positive Manip)_PS.glsl
Name: Nico Omenetto
Purpose: To display what effects would occur if an emitted vertex were to be changed by a uniform vector

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>


*/

layout( location = 0 ) out vec4 FragColor;
uniform vec4 color; //uniform color vector

void main() {
 
 FragColor = color;
}