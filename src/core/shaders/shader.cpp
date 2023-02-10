#include "shader.h"
#include <cerrno>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

void Shader::load(const char *vertexSource, const char *fragmentSource) {
  // Create Vertex Shader Object and get its reference
  GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
  // Attach Vertex Shader source to the Vertex Shader Object
  GL_CHECK(glShaderSource(vertexShader, 1, &vertexSource, NULL));
  // Compile the Vertex Shader into machine code
  GL_CHECK(glCompileShader(vertexShader));
  // Checks if Shader compiled succesfully
  compileErrors(vertexShader, "VERTEX");

  // Create Fragment Shader Object and get its reference
  GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
  // Attach Fragment Shader source to the Fragment Shader Object
  GL_CHECK(glShaderSource(fragmentShader, 1, &fragmentSource, NULL));
  // Compile the Vertex Shader into machine code
  GL_CHECK(glCompileShader(fragmentShader));
  // Checks if Shader compiled succesfully
  compileErrors(fragmentShader, "FRAGMENT");

  GL_CHECK(ID = glCreateProgram());

  // Attach the Vertex and Fragment Shaders to the Shader Program
  GL_CHECK(glAttachShader(ID, vertexShader));
  GL_CHECK(glAttachShader(ID, fragmentShader));
  // Wrap-up/Link all the shaders together into the Shader Program
  GL_CHECK(glLinkProgram(ID));
  // Checks if Shaders linked succesfully
  GL_CHECK(compileErrors(ID, "PROGRAM"));

  // Delete the now useless Vertex and Fragment Shader objects
  GL_CHECK(glDeleteShader(vertexShader));
  GL_CHECK(glDeleteShader(fragmentShader));

  setInt("texture1", 0);
  setInt("texture2", 1);

  vertexShaderSource = vertexSource;
  fragmentShaderSource = fragmentSource;
}

Shader::Shader() {}

// Constructor that build the Shader Program from 2 different shaders
Shader::Shader(const char *vertexFile, const char *fragmentFile) {
  // Read vertexFile and fragmentFile and store the strings

  std::string vertexCode;
  std::string fragmentCode;
  std::ifstream vShaderFile;
  std::ifstream fShaderFile;
  // ensure ifstream objects can throw exceptions:
  vShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
  fShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
  try {
    // open files
    vShaderFile.open(vertexFile);
    fShaderFile.open(fragmentFile);
    std::stringstream vShaderStream, fShaderStream;
    // read file's buffer contents into streams
    vShaderStream << vShaderFile.rdbuf();
    fShaderStream << fShaderFile.rdbuf();
    // close file handlers
    vShaderFile.close();
    fShaderFile.close();
    // convert stream into string
    vertexCode = vShaderStream.str();
    fragmentCode = fShaderStream.str();
  } catch (std::ifstream::failure &e) {
    std::cout << "ERROR::SHADER::FILE_NOT_SUCCESSFULLY_READ: " << e.what()
              << std::endl;
  }

  // Convert the shader source strings into character arrays
  const char *vertexSource = vertexCode.c_str();
  const char *fragmentSource = fragmentCode.c_str();
  load(vertexSource, fragmentSource);
}

// Checks if the different Shaders have compiled properly
void Shader::compileErrors(unsigned int shader, const char *type) {
  // Stores status of compilation
  GLint hasCompiled;
  // Character array to store error message in
  char infoLog[1024];
  if (std::string(type) != "PROGRAM") {
    glGetShaderiv(shader, GL_COMPILE_STATUS, &hasCompiled);
    if (hasCompiled == GL_FALSE) {
      glGetShaderInfoLog(shader, 1024, NULL, infoLog);
      std::cout << "SHADER_COMPILATION_ERROR for:" << type << "\n"
                << infoLog << std::endl;
      abort();
    }
  } else {
    glGetProgramiv(shader, GL_LINK_STATUS, &hasCompiled);
    if (hasCompiled == GL_FALSE) {
      glGetProgramInfoLog(shader, 1024, NULL, infoLog);
      std::cout << "SHADER_LINKING_ERROR for:" << type << "\n"
                << infoLog << std::endl;
      abort();
    }
  }
}

Shader::~Shader() {
  
}