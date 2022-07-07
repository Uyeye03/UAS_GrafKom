﻿#version 330 core

		//lokasi		//type data
layout(location = 0) in vec3 aPosition;

//layout(location = 1) in vec3 aColor;
layout(location = 1) in vec3 aNormal;

//menyediakan var yang bisa dikirim ke next step -> frag
out vec4 vertexColor;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main(void)
{
	gl_Position = vec4(aPosition, 1.0) * model * view * projection;
	//vertexColor = vec4(0.0, 0.0, 1.0, 1.0);
	vertexColor = vec4(1.0, 0.0, 0.0, 1.0);
}