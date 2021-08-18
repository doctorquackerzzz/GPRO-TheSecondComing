#version 450

layout (triangles) in; //the input primitive, can be either classified as points, lines, or triangles
layout (triangle_strip, max_vertices=3) out;

uniform vec4 uManipPoint;

void main()
{
	gl_Position = gl_in[0].gl_Position ;
	EmitVertex();
	gl_Position = gl_in[1].gl_Position * uManipPoint;
	EmitVertex();

	gl_Position = gl_in[2].gl_Position;
	
	EmitVertex();
	
	EndPrimitive();
	

}