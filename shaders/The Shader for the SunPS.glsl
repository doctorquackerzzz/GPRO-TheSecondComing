#version 450

struct MaterialInfo {
vec3 Kd;
vec3 Ks;
vec3 Ka;
float Shininess;

};
uniform MaterialInfo Material;

struct LightInfo{
	vec3 Intensity;
 	vec4 Position; 
};
uniform LightInfo Light;

uniform struct LineInfo{
	float Width;
	vec4 lColor;
} Line;

in vec3 gPosition;
in vec3 gNormal;
noperspective in vec3 gEdgeDistance;

vec3 phongModel (vec3 pos, vec3 norm)
{
	vec3 s = normalize(vec3(Light.Position) - pos);
 	vec3 v = normalize(-pos.xyz);
 	vec3 r = reflect( -s, norm );
	vec3 ambient = Light.Intensity * Material.Ka;
 	float sDotN = max( dot(s,norm), 0.0 );
 	vec3 diffuse = Light.Intensity * Material.Kd * sDotN;
 	vec3 spec = vec3(0.0);
 	if( sDotN > 0.0 )
 	spec = Light.Intensity * Material.Ks *
 	pow( max( dot(r,v), 0.0 ), Material.Shininess);
	return ambient + diffuse + spec;


}
in vec4 color;
out vec4 outColor;

void main() {
   //float d = min(gEdgeDistance.x, gEdgeDistance.y);
   outColor = vec4(color);
}