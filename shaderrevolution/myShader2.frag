varying vec3 normal;
varying vec3 v;


void main(void) {

	vec4 color = vec4(0,0,0,0);
	
	vec4 c = gl_FrontLightProduct[1].diffuse;
	
	vec3 light_dir = normalize(gl_LightSource[1].position.xyz-v);

	float intensity = dot( light_dir, normal );

	if (intensity > 0.9)
		color += 1.00 * c;
	else if (intensity > 0.6)  
		color += 0.7 * c;
	else if (intensity > 0.1)
		color += 0.3 * c;
	else
		color += 0.1 * c;

	c = gl_FrontLightProduct[0].diffuse;
	
	light_dir = normalize(gl_LightSource[0].position.xyz);

	intensity = dot( light_dir, normal );

	if (intensity > 0.9)
		color += 1.00 * c;
	else if (intensity > 0.6)  
		color += 0.7 * c;
	else if (intensity > 0.1)
		color += 0.3 * c;
	else
		color += 0.1 * c;

	if(dot(-normalize(v),normal) < 0.3)
		color = vec4(0,0,0,1);
	gl_FragColor = color;

}