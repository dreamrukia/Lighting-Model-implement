varying vec3 normal;
varying vec3 v;


void main(void) {



	normal = normalize( gl_NormalMatrix * gl_Normal ); // Store normal to FS

	v = vec3( gl_ModelViewMatrix * gl_Vertex );

	gl_FrontColor = gl_Color; // Pass color

	gl_Position = ftransform(); // Pass vertex

	

}