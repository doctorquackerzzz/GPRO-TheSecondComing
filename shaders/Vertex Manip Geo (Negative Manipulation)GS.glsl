#version 450
/*
File name: Vertex Manip Geo (Negative Manipulation)_GS.glsl
Name: Nico Omenetto
Purpose: To display the effect of what manipulating an emitted vector negatively would have on a geometry shader enabled object

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>

WARNING: The clip_space messes the structure of the object making it look to be a capsule that doesn't change structure when the camera is changed.
*/

//layouts
layout (triangles) in; //the input primitive, can be either classified as points, lines, or triangles
layout (line_strip, max_vertices=3) out; //how the primitives are layed out in the structure of the object, with the limiter of the max amount of vertices for the primitive

//varyings (demonstration for pass through varyings, given by Prof. Buckstein)
in vec4 color[];
out vec4 finalColor;

//uniforms
uniform vec4 uManipPoint; //uniform vector taking care of manipulating the emitted vertex

void main()
{
	//first emitted vertex
	gl_Position = gl_in[0].gl_Position;
	EmitVertex();
	
	//second emitted vertex (changed by the manipulation vector)
	gl_Position = gl_in[1].gl_Position - uManipPoint;
	EmitVertex();

	//third emitted vertex
	gl_Position = gl_in[2].gl_Position;
	EmitVertex();
	
	//primitive assembled
	EndPrimitive();
	

}