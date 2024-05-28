#pragma once

class ScriptBase
{
public:
  virtual void init() = 0;
  virtual void draw() = 0;
  virtual ~ScriptBase() {}
};

typedef ScriptBase *(*CreateScriptFunc)();
typedef void (*DestroyScriptFunc)(ScriptBase *);
