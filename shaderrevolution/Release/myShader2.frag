// Right now this is just coloured using a value passed in from the vertex shader 
// Do something more interesting here ...
in vec3 L;

void main()
{     
    vec3 n = normalize(L);

    gl_FragColor = vec4(abs(n),1);
}