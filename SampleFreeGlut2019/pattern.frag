#version 330 compatibility

uniform float	uTimeF;		// "Time", from Animate( )
in vec2  	vST;		// texture coords

in vec3 vert;

void
main( )
{
	
	vec3 myColor = vert.xyz;
	if( sqrt(pow(vST.x, 2) + vST.y) < uTimeF /2 + 0.5 )
	{
		myColor = vec3( vST.y , 0, uTimeF);
	}

	if( sqrt(pow(vST.y, 2) + vST.x) < 0.5 )
	{
		myColor = vec3( 0 , 0, uTimeF);
	}
	gl_FragColor = vec4( myColor,  1. );
}