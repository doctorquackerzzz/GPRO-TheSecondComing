#version 450

uniform vec4 lineColor;

layout (location = 0) out vec4 cFragColor;

in vec3 vTexCoord;
in vec3 vPos;


void main() {
   if(fract(vTexCoord.x / 0.1f) < 0.1f || fract(vTexCoord.y / 0.1f) < 0.1f)
   cFragColor = lineColor;
   else
   cFragColor = vec4(0);
}