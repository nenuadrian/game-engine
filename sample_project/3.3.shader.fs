#version 330 core
in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D texture_diffuse;
uniform sampler2D texture_specular;

void main() {
    FragColor = mix(texture(texture_diffuse, TexCoord), texture(texture_specular, TexCoord), 0.2);
}