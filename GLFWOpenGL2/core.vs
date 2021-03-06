#version 330 core
layout (location = 0) in vec3 aPos;   // the position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
layout (location = 2) in vec2 aTex; // the color variable has attribute position 2

out vec3 ourColor; // output a color to the fragment shader
out vec2  ourTex; 

uniform float offset;
uniform mat4 trans;
uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;


void main()
{
    gl_Position =  trans* proj * view *  model * vec4(aPos,  1.0);
    ourColor = aColor; // set ourColor to the input color we got from the vertex data
	ourTex = aTex;
}       