#version 450

uniform mat4 matVP;
uniform mat4 matGeo;

layout (location = 0) in vec4 pos;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 texCoord;


out vec3 vTexCoord;
out vec3 vPosition;

out vec4 color;

void main() {
   color = vec4(abs(normal), 1.0);
   gl_Position = matVP * matGeo * pos;
   
   vTexCoord = texCoord;
   vPosition = vec3(pos.xyz);
}
