#version 450
/*
File name: Vertex Manip Geo (Negative Manipulation)_PS.glsl
Name: Nico Omenetto
Purpose: To display the effect of what manipulating an emitted vector negatively would have on a geometry shader enabled object

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>


*/

//layouts
layout( location = 0 ) out vec4 FragColor;

uniform vec4 color; //uniform color vector

//varying (demo for passthroughs)
in vec4 finalColor;


void main() {
 
 FragColor = color;
}