in vec3 LightPos;
out vec3 L;

void main()
{    
	L = vec3(gl_ModelViewMatrix*(vec4(LightPos,1)-gl_Vertex));
    gl_Position = ftransform();
}