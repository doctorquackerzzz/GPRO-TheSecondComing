#version 450

out vec4 FragColor;

void main()
{
	vec4 color = vec4(1.0, 0.0, 0.0, 1.0);
	float mixture = smoothstep(0.0, 2.0, 0.0);
	
	FragColor = mix(color, color, mixture);

}