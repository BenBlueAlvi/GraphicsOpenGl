#version 330 compatibility

uniform float	uTimeV;		// "Time", from Animate( )
out vec2  	vST;		// texture coords

out vec3 vert;

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{ 
	vST = gl_MultiTexCoord0.st;
	vert = gl_Vertex.xyz;
	if (vST.y < 0.01 && vST.y > -0.01){
		vert = vec3(vert.x, vert.y - uTimeV* 3, vert.z);
		
	}

	else if (vST.x < 0.1 && vST.x > -0.1){
		vert = vec3(vert.x - uTimeV* 2, vert.y, vert.z);
	}

	else if (vST.y < 0.9 && vST.x > 0.7){
		vert = vec3(vert.x, vert.y, vert.z - uTimeV);
	}
	
	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );
}