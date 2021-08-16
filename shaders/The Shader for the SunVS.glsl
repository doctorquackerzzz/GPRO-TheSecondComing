#version 400
layout (location = 0 ) in vec3 VertexPosition;
layout (location = 1 ) in vec3 VertexNormal;
out vec3 VNormal;
out vec3 VPosition;
uniform mat4 ModelViewMatrix;
uniform mat3 NormalMatrix;
uniform mat4 ProjectionMatrix;
uniform mat4 MVP;


mat3 YRotation(float angle)
{
	float s =sin(angle);
	float c =cos(angle);	
	return mat3(c,0.0,-s,0.0,1.0,0.0,s,0.0,c);
}
void main()
{
 VNormal = normalize( NormalMatrix * VertexNormal);
 VPosition = vec3(ModelViewMatrix * vec4(VertexPosition,1.0));
 gl_Position = MVP * vec4(VPosition,1.0);
}