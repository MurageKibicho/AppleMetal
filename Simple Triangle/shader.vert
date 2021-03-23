attribute vec3 vVertex;
attribute vec3 vColor;
attribute vec4 vSmoothColor;
uniform mat4 MVP;

void main(){
	vSmoothColor = vec4(vColor, 1);
	gl_Position = MVP * vec4(vVertex, 1);
}