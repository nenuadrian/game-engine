#include "camera.h"

namespace Hades
{
  void Camera::updateCameraVectors()
  {
    // calculate the new Front vector
    glm::vec3 front;
    front.x = cos(glm::radians(Yaw)) * cos(glm::radians(Pitch));
    front.y = sin(glm::radians(Pitch));
    front.z = sin(glm::radians(Yaw)) * cos(glm::radians(Pitch));
    Front = glm::normalize(front);
    // also re-calculate the Right and Up vector
    Right = glm::normalize(glm::cross(
        Front, WorldUp)); // normalize the vectors, because their length gets
                          // closer to 0 the more you look up or down which
                          // results in slower movement.
    Up = glm::normalize(glm::cross(Right, Front));
  }

  void Camera::ProcessKeyboard(Camera_Movement direction, float deltaTime)
  {
    float velocity = MovementSpeed * deltaTime;
    if (direction == FORWARD)
      Position += Front * velocity;
    if (direction == BACKWARD)
      Position -= Front * velocity;
    if (direction == LEFTA)
      Position -= Right * velocity;
    if (direction == RIGHTD)
      Position += Right * velocity;
    if (direction == UP)
      Position -= glm::vec3(0.0f, -SPEED, 0.0f) * velocity;
    if (direction == DOWN)
      Position += glm::vec3(0.0f, -SPEED, 0.0f) * velocity;
    if (direction == LEFT)
    {
      Yaw -= 1.0f;
      updateCameraVectors();
    }
    if (direction == RIGHT)
    {
      Yaw += 1.0f;
      updateCameraVectors();
    }
  }

  void Camera::scrollCallback(float x, float y)
  {
    float velocity = 2.5f * 0.1f;
    if (y > 0)
    {
      Position += Front * velocity;
    }
    else
    {
      Position -= Front * velocity;
    }
  }
  // processes input received from a mouse input system. Expects the offset
  // value in both the x and y direction.
  void Camera::ProcessMouseMovement(float xoffset, float yoffset)
  {
    xoffset *= MouseSensitivity;
    yoffset *= MouseSensitivity;

    Yaw += xoffset;
    Pitch += yoffset;

    // make sure that when pitch is out of bounds, screen doesn't get flipped
    if (Pitch > 89.0f)
      Pitch = 89.0f;
    if (Pitch < -89.0f)
      Pitch = -89.0f;

    // update Front, Right and Up Vectors using the updated Euler angles
    updateCameraVectors();
  }

} // namespace Hades