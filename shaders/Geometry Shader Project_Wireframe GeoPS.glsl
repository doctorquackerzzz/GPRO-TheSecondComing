#version 450
/*
File name: Wireframe Geo_PS.glsl
Name: Nico Omenetto
Purpose: To display the effects of the Geometry Shader to display the wireframe of an object

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>


*/

out vec4 FragColor;

void main()
{
	//red  solid color
	vec4 color = vec4(1.0, 0.0, 0.0, 1.0);
	
	//color display
	FragColor = color;

}