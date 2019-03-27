varying vec3 normal, vert;
varying vec2 vN;


void main(void) {



	normal = normalize( gl_NormalMatrix * gl_Normal ); // Store normal to FS

	vert = vec3( gl_ModelViewMatrix * gl_Vertex ); // Store vertex to FS

	vec3 r = reflect(normalize(vert) , normal);

	float m = 2. * sqrt(
    pow( r.x, 2. ) +
    pow( r.y, 2. ) +
    pow( r.z + 1., 2. ));

	vN = r.xy / m + .5;

	gl_FrontColor = gl_Color; // Pass color

	gl_Position = ftransform(); // Pass vertex



}