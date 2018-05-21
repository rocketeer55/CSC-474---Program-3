#version 330 core
layout(location = 0) in vec3 vertPos;
layout(location = 1) in int vertInd;

uniform mat4 P;
uniform mat4 V;
uniform mat4 M;
uniform mat4 Manim[73];

void main() {
	mat4 Ma = Manim[vertInd];
	vec3 pos;
	// = M * Manim[vertInd] * vec4(vertPos, 1.0);

	pos.x = Ma[3][0];
	pos.y = Ma[3][1];
	pos.z = Ma[3][2];


    gl_Position = P * V * M * vec4(pos, 1.0);
}