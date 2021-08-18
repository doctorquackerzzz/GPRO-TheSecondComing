#version 450

layout (triangles) in; // the primitive that the GS will seperate sections of a geometry into, by amount of vertices
layout (line_strip, max_vertices = 3) out; // the output that the primitive will display itself as, with the limiter of the maximum amount of vertices per primitive;

void main()
{
	gl_Position = gl_in[0].gl_Position;
	EmitVertex();
	gl_Position = gl_in[1].gl_Position;
	EmitVertex();

	gl_Position = gl_in[2].gl_Position;
	EmitVertex();
	EndPrimitive();
}