#version 450
/*
File name: Vertex Manipulation Geo (Animation)_VS.glsl
Name: Nico Omenetto
Purpose: To animate the change of a primitive's vector through time in the geometry shader

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>
SHADERed Documentation <https://shadered.org/docs/shaderpass.html#system-variables>
Concept of animation taught Jorge Mogas-Soldevilla, a tutor in OpenGL and one of father's friends


*/

//layouts
layout (location = 0 ) in vec3 aPosition;
layout (location = 1 ) in vec3 aNormal;

//input varying
in vec2 vTexcoord;

//output varying
out vec3 VNormal;
out vec4 color;
out vec3 VPosition;

//uniforms
uniform mat4 ModelViewMatrix;
uniform mat4 MVP;


void main()
{
	
 	VNormal = aNormal;
 	VPosition = vec3(ModelViewMatrix * vec4(aPosition,1.0));
 	gl_Position = MVP * vec4(VPosition,1.0);
}