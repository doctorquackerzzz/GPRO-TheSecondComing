#version 450

/*
File name: Vertex Manipulation Geo (Positive Manip)_GS.glsl
Name: Nico Omenetto
Purpose: To display what effects would occur if an emitted vertex were to be changed by a uniform vector

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>


*/

layout (triangles) in; //the input primitive, can be either classified as points, lines, or triangles
layout (triangle_strip, max_vertices=3) out; //how the primitive will be laid out in terms of structure of the object, with the limiter of the maximum vertices of the primitive

uniform vec4 uManipPoint; //uniform vector that deals with manipulation of the emitted vector

void main()
{
	//first vertex emitted
	gl_Position = gl_in[0].gl_Position;
	EmitVertex();
	
	//second vertex emitted (changed by manipulation vector)
	gl_Position = gl_in[1].gl_Position * uManipPoint;
	EmitVertex();

	//third vertex emitted
	gl_Position = gl_in[2].gl_Position;
	EmitVertex();
	
	//finished primitive output
	EndPrimitive();
	

}