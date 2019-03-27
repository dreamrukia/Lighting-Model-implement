// reference : http://ruh.li/GraphicsCookTorrance.html
// https://www.clicktorelease.com/blog/creating-spherical-environment-mapping-shader/

varying vec3 normal, vert;
vec3 light_dir, varNormal, varEyeDir, lightDirection;
vec4 la,ld, finalValue;
uniform sampler2D tMatCap;
varying vec2 vN;

void main()
{
	for(int i = 0; i < 2; i++){
	
	if(i == 0){
		light_dir = normalize( gl_LightSource[i].position.xyz);
	}else{
		light_dir = normalize( gl_LightSource[i].position.xyz - vert );
	}
	vec3 eye_dir = normalize( -vert.xyz );
	lightDirection = light_dir;
	varEyeDir = eye_dir;

	vec3 ref = normalize( -reflect( light_dir, normal ) );

	varNormal = normal;

	la = gl_FrontLightProduct[i].ambient;

	ld = gl_FrontLightProduct[i].diffuse * max( dot(normal, light_dir), 0.0 );

	vec4 ls = gl_FrontLightProduct[i].specular

		* pow( max( dot(ref, eye_dir), 0.0 ), gl_FrontMaterial.shininess );
	
    // set important material values
    float roughnessValue = 0.3; // 0 : smooth, 1: rough
    float F0 = 0.8; // fresnel reflectance at normal incidence
    float k = 0.2; // fraction of diffuse reflection (specular reflection = 1 - k)
    vec3 lightColor = vec3(gl_FrontLightProduct[i].specular

		* pow( max( dot(ref, eye_dir), 0.0 ), gl_FrontMaterial.shininess ));
    
    // interpolating normals will change the length of the normal, so renormalize the normal.
    vec3 normal = normalize(varNormal);
    
    // do the lighting calculation for each fragment.
    float NdotL = max(dot(normal, lightDirection), 0.0);
    
    float specular = 0.0;
    if(NdotL > 0.0)
    {
        vec3 eyeDir = normalize(varEyeDir);

        // calculate intermediary values
        vec3 halfVector = normalize(lightDirection + eyeDir);
        float NdotH = max(dot(normal, halfVector), 0.0); 
        float NdotV = max(dot(normal, eyeDir), 0.0); // note: this could also be NdotL, which is the same value
        float VdotH = max(dot(eyeDir, halfVector), 0.0);
        float mSquared = roughnessValue * roughnessValue;
        
        // geometric attenuation
        float NH2 = 2.0 * NdotH;
        float g1 = (NH2 * NdotV) / VdotH;
        float g2 = (NH2 * NdotL) / VdotH;
        float geoAtt = min(1.0, min(g1, g2));
     
        // roughness (or: microfacet distribution function)
        // beckmann distribution function
        float r1 = 1.0 / ( 4.0 * mSquared * pow(NdotH, 4.0));
        float r2 = (NdotH * NdotH - 1.0) / (mSquared * NdotH * NdotH);
        float roughness = r1 * exp(r2);
        
        // fresnel
        // Schlick approximation
        float fresnel = pow(1.0 - VdotH, 5.0);
        fresnel *= (1.0 - F0);
        fresnel += F0;
        
        specular = (fresnel * geoAtt * roughness) / (NdotV * NdotL * 3.14);
		}
		finalValue += la + ld + lightColor * NdotL * (k + specular * (1.0 - k));
	}
	vec3 base = texture2D(tMatCap,vN).rgb;
	gl_FragColor = finalValue + vec4(base, 1.);
}