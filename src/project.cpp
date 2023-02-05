#include "project.h"
#include "../json/single_include/nlohmann/json.hpp"
#include "model_complex.h"
#include <fstream>

Project::Project() {}

void Project::Save(std::string directory) {
  nlohmann::json data = nlohmann::json::object();

  data["title"] = title;

  std::vector<nlohmann::json> worldsVector = {};
  std::vector<nlohmann::json> assetsVector = {};
  std::vector<nlohmann::json> entitiesVector = {};
  for (World *world : worlds) {
    nlohmann::json worldData = nlohmann::json::object();
    worldData["id"] = world->id;
    worldData["name"] = world->name;
    worldsVector.push_back(worldData);
    for (Asset *asset : world->assets) {
      nlohmann::json assetData = nlohmann::json::object();
      assetData["file"] = asset->file;
      assetData["name"] = asset->name;
      assetData["world"] = world->id;
      assetsVector.push_back(assetData);
    }

    for (Entity entity : world->entities) {
      nlohmann::json entityData = nlohmann::json::object();
      entityData["id"] = entity.id;
      entityData["name"] = entity.name;
      entityData["world"] = world->id;
      entitiesVector.push_back(entityData);
    }
  }

  data["worlds"] = worldsVector;
  data["assets"] = assetsVector;
  data["entities"] = entitiesVector;

  std::string s = data.dump();
  std::ofstream myfile;
  myfile.open(directory + "data.json");
  myfile << s;
  myfile.close();
}

void Project::Load(std::string directory) {
  std::ifstream ifs(directory + "data.json");
  std::string content((std::istreambuf_iterator<char>(ifs)),
                      (std::istreambuf_iterator<char>()));
  ifs.close();

  auto data = nlohmann::json::parse(content);
  title = data["title"];

  for (auto worldData : data["worlds"]) {
    World *world = new World();
    world->id = worldData["id"];
    world->name = worldData["name"];
    worlds.push_back(world);
  }

  for (auto assetData : data["assets"]) {
    Asset *asset = new Asset(assetData["file"]);
    asset->name = assetData["name"];
    for (World *w : worlds) {
      if (w->id == assetData["world"]) {
        w->assets.push_back(asset);
      }
    }
  }

  for (auto entityData : data["entities"]) {
    Entity entity = Entity();
    entity.name = entityData["name"];
    entity.id = entityData["id"];
    for (World *w : worlds) {
      if (w->id == entityData["world"]) {
        w->entities.push_back(entity);
      }
    }
  }
}

World *Project::NewWorld() {
  World *world = new World();
  worlds.push_back(world);

  return world;
}

World::World() {
  id = "new-id";
  name = "Untitled";
}

Asset::Asset(std::string file_) {
  file = file_;
  name = file_;
}

Entity::Entity() {
  id = "test";
  name = "Untitled";

  
}

ModelEntity::ModelEntity() : Entity() {
  shader = new Shader("../sample_project/3.3.shader.vs",
                      "../sample_project/3.3.shader.fs");
  GL_CHECK(glUseProgram(shader->ID));
  GL_CHECK(glUniform1i(
      glGetUniformLocation(shader->ID, std::string("texture_diffuse").c_str()),
      0));
  GL_CHECK(glUniform1i(
      glGetUniformLocation(shader->ID, std::string("texture_specular").c_str()),
      1));
  GL_CHECK(glUseProgram(0));

  model =
      new ModelComplex("../sample_project/backpack/12305_backpack_v2_l3.obj");
}

void Entity::Draw(Camera camera, glm::mat4 projection) {}

void ModelEntity::Draw(Camera camera, glm::mat4 projection) {

  glUseProgram(shader->ID);
  shader->setMat4("projection", projection);
  // camera/view transformation
  glm::mat4 view = camera.GetViewMatrix();
  shader->setMat4("view", view);
  glm::mat4 modelT = glm::mat4(1.0f);
  shader->setMat4("model", modelT);
  model->Draw(shader->ID);
  GL_CHECK(glUseProgram(0));
}