

#pragma once

#include <glm/glm.hpp>
#include <string>

#define GL_SILENCE_DEPRECATION

#include <GLFW/glfw3.h>

#include <OpenGL/gl3.h>

#include <stdio.h>
#include <stdlib.h>
#define OPENGL_UTILS

static void CheckOpenGLError(const char *stmt, const char *fname, int line) {
  GLenum err = glGetError();
  if (err != GL_NO_ERROR) {
    // const GLubyte* msg = glErrorString(err);
    printf("OpenGL error %08x, at %s:%i - for %s \n", err, fname, line, stmt);
    abort();
  }
}

#ifdef _DEBUG
#define GL_CHECK(stmt)                                                         \
  do {                                                                         \
    stmt;                                                                      \
    CheckOpenGLError(#stmt, __FILE__, __LINE__);                               \
  } while (0)
#else
#define GL_CHECK(stmt) stmt
#endif

class Shader {
public:
  // Reference ID of the Shader Program
  GLuint ID;
  // Constructor that build the Shader Program from 2 different shaders
  Shader();
  Shader(const char *vertexFile, const char *fragmentFile);
  ~Shader();
  void Load(const char *vertexSource, const char *fragmentSource);
  // activate the shader
  // ------------------------------------------------------------------------
  void use() const { glUseProgram(ID); }
  // utility uniform functions
  // ------------------------------------------------------------------------
  void setBool(const std::string &name, bool value) const {
    glUniform1i(glGetUniformLocation(ID, name.c_str()), (int)value);
  }
  // ------------------------------------------------------------------------
  void setInt(const std::string &name, int value) const {
    glUniform1i(glGetUniformLocation(ID, name.c_str()), value);
  }
  // ------------------------------------------------------------------------
  void setFloat(const std::string &name, float value) const {
    glUniform1f(glGetUniformLocation(ID, name.c_str()), value);
  }
  // ------------------------------------------------------------------------
  void setVec2(const std::string &name, const glm::vec2 &value) const {
    glUniform2fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]);
  }
  void setVec2(const std::string &name, float x, float y) const {
    glUniform2f(glGetUniformLocation(ID, name.c_str()), x, y);
  }
  // ------------------------------------------------------------------------
  void setVec3(const std::string &name, const glm::vec3 &value) const {
    glUniform3fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]);
  }
  void setVec3(const std::string &name, float x, float y, float z) const {
    glUniform3f(glGetUniformLocation(ID, name.c_str()), x, y, z);
  }
  // ------------------------------------------------------------------------
  void setVec4(const std::string &name, const glm::vec4 &value) const {
    glUniform4fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]);
  }
  void setVec4(const std::string &name, float x, float y, float z,
               float w) const {
    glUniform4f(glGetUniformLocation(ID, name.c_str()), x, y, z, w);
  }
  // ------------------------------------------------------------------------
  void setMat2(const std::string &name, const glm::mat2 &mat) const {
    glUniformMatrix2fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE,
                       &mat[0][0]);
  }
  // ------------------------------------------------------------------------
  void setMat3(const std::string &name, const glm::mat3 &mat) const {
    glUniformMatrix3fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE,
                       &mat[0][0]);
  }
  // ------------------------------------------------------------------------
  void setMat4(const std::string &name, const glm::mat4 &mat) const {
    glUniformMatrix4fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE,
                       &mat[0][0]);
  }

private:
  // Checks if the different Shaders have compiled properly
  void compileErrors(unsigned int shader, const char *type);
};
