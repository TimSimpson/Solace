import("Macaroni", "ProjectTemplates", "1")


require "SimpleProject"

SimpleProject{
  group="BorderTown",
  project="Solace",
  version="1.0.0.0",
  src="src",
  target="target",
  dependencies = {
    load("Macaroni", "Boost-headers", "1.55"):Target("lib"),
    load("Macaroni", "CppStd", "2003"):Target("lib"),
    load("Macaroni", "Boost-filesystem", "1.55"):Target("lib"),
  },
};

