// You are provided with an example that already includes the basic lighting calculations

in vec3 N;
in vec3 v;

void main()
{
    // The scene's ambient light.
    vec4 ambient = gl_LightModel.ambient * gl_FrontMaterial.ambient;

	// The normal vectors is generally not normalized after being
	// interpolated across a triangle.  Here we normalize it.
	vec3 Normal = normalize(N);

	// Since the vertex is in eye space, the direction to the
	// viewer is simply the normalized vector from v to the
	// origin.
	vec3 Viewer = -normalize(v);

	// Get the lighting direction and normalize it.
	vec3 Light  = normalize(gl_LightSource[0].position.xyz);

	// Compute halfway vector
	vec3 Half = normalize(Viewer+Light);

	// Compute factor to prevent light leakage from below the
	// surface
	float B = 1.0;
	if(dot(Normal, Light)<0.0) B = 0.0;

	// Compute geometric terms of diffuse and specular
	float diffuseShade = max(dot(Normal, Light), 0.0);
	float specularShade = 
	  B * pow(max(dot(Half, Normal), 0.0), gl_FrontMaterial.shininess);

	// Compute product of geometric terms with material and
	// lighting values
	vec4 diffuse = diffuseShade * gl_FrontLightProduct[0].diffuse;
	vec4 specular = specularShade * gl_FrontLightProduct[0].specular;
	ambient += gl_FrontLightProduct[0].ambient;

	// add factors from pointlight..
	vec3 PLight = normalize(gl_LightSource[1].position.xyz-v);
	vec3 PHalf = normalize(Viewer+PLight);
	
	vec3 lightDir = gl_LightSource[1].position.xyz - v;
    float distance = length(lightDir);
	
	float PB=1.0;
	if(dot(Normal,normalize(lightDir))<0.0) PB=0.0;
	
	float spotEffect = dot(normalize(gl_LightSource[1].spotDirection), normalize(-lightDir));
    
	if(spotEffect>gl_LightSource[1].spotCosCutoff){
		spotEffect = pow(spotEffect, gl_LightSource[1].spotExponent);

		float atten = spotEffect/(gl_LightSource[1].quadraticAttenuation * distance * distance + 
			gl_LightSource[1].linearAttenuation*distance + gl_LightSource[1].constantAttenuation);
	
		float PdiffuseShade = max(dot(Normal, normalize(lightDir)),0.0);
		float PspecularShade = PB * pow( max ( dot(PHalf,Normal),0.0), gl_FrontMaterial.shininess);
		diffuse += atten * PdiffuseShade * gl_FrontLightProduct[1].diffuse;
		specular += atten * PspecularShade * gl_FrontLightProduct[1].specular;
		ambient += atten * gl_FrontLightProduct[1].ambient;
	}
	// Assign final color
	gl_FragColor = ambient + diffuse + specular + gl_FrontMaterial.emission;
}
