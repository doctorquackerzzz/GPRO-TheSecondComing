#version 450
/*
File name: Wireframe Geo_GS.glsl
Name: Nico Omenetto
Purpose: To display the effects of the Geometry Shader to display the wireframe of an object

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>


*/

layout (triangles) in; // the primitive that the GS will seperate sections of a geometry into, by amount of vertices
layout (line_strip, max_vertices = 3) out; // the output that the primitive will display itself as, with the limiter of the maximum amount of vertices per primitive;

void main()
{
	//Vertex A Emission
	gl_Position = gl_in[0].gl_Position;
	EmitVertex();
	
	//Vertex B Emission
	gl_Position = gl_in[1].gl_Position;
	EmitVertex();

	//Vertex C Emission
	gl_Position = gl_in[2].gl_Position;
	EmitVertex();
	
	//Primitive Creation
	EndPrimitive();
}