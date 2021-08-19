#version 450

/*
File name: Vertex Manipulation Geo (Animation)_GS.glsl
Name: Nico Omenetto
Purpose: To animate the change of a primitive's vector through time in the geometry shader

RESOURCES: Open GL's 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/glspec46.core.pdf>
GLSL 4.6 Specifications <https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf>
SHADERed Documentation <https://shadered.org/docs/shaderpass.html#system-variables>
Concept of animation taught Jorge Mogas-Soldevilla, a tutor in OpenGL and one of father's friends


*/

layout (triangles) in; //the input primitive, can be either classified as points, lines, or triangles
layout (triangle_strip, max_vertices=3) out; //the output of how the primitive is layed, with the constrict of the maximum vertices it can use

//uniform
uniform vec4 uManipPoint; //a vec4 in which the emitted vertex can be manipulated by
uniform float Time; //uniform variable, learned from SHADERed's documentation, that the float variable is useful for changes over time

//varyings
in vec3 VNormal[]; // input varying, from the vertex shader, that takes into account the face normal per element of array

//random vec2 generator, to proceed with the progress of time
//LEARNED from JORGE MOGAS-SOLDEVILLA
float rand(vec2 co)
{    
	return fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453);
}

void main()
{
	float frameRand = rand(gl_in[0].gl_Position.xy) * sin(Time); //animation change
	
	//first emitted vertex
	gl_Position = gl_in[0].gl_Position + vec4(VNormal[0],0) * frameRand;
	EmitVertex();
	
	//second emitted vertex
	gl_Position = gl_in[1].gl_Position + vec4(VNormal[1],0) * frameRand;
	EmitVertex();
	
	//third emitted vertex
	gl_Position = gl_in[2].gl_Position + vec4(VNormal[2],0) * frameRand;
	EmitVertex();
	
	//primitive creation
	EndPrimitive();
	

}