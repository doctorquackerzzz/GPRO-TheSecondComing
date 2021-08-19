#version 450
/*
File name: Vertex Manipulation Geo (Animation)_PS.glsl
Name: Nico Omenetto
Purpose: To animate the change of a primitive's vector through time in the geometry shader

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>
SHADERed Documentation <https://shadered.org/docs/shaderpass.html#system-variables>
Concept of animation taught Jorge Mogas-Soldevilla, a tutor in OpenGL and one of father's friends


*/

layout( location = 0 ) out vec4 FragColor;
uniform vec4 color; //uniform color vector


void main() {
 
 FragColor = color ;
}