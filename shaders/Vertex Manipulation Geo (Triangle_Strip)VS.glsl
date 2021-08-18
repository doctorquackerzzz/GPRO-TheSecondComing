#version 450
layout (location = 0 ) in vec3 VertexPosition;
layout (location = 1 ) in vec3 VertexNormal;

in vec2 vTexcoord;
out vec3 VNormal;
out vec4 color;
out vec3 VPosition;
uniform mat4 ModelViewMatrix;
uniform mat3 NormalMatrix;
uniform mat4 ProjectionMatrix;
uniform mat4 MVP;



void main()
{
 
 VPosition = vec3(ModelViewMatrix * vec4(VertexPosition,1.0));
 gl_Position = MVP * vec4(VPosition,1.0);
}