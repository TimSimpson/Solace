local Path = require "Macaroni.IO.Path"
local cmfw = require "Macaroni.Generators.CMake.CMakeFileWriter"


project = context:Group("BorderTown"):Project("Solace"):Version("XYZ")
lib = project:Library{
    name="lib",
    headers=pathList{"src", "target"},
    sources=pathList{"src"},
}

function generate()
  -- Generate C++ code like normal.
  local cpp = plugins:Get("Cpp")
  cpp:Run("Generate",
          { projectVersion=project, path=filePath("target"), output=output})

  -- Use all the CMake generators as an example
  local root = Path.New(getWorkingDirectory());
  cmfw.ListsTxt(
      project,
      root:NewPathForceSlash("target/CMakeLists.txt"))
    cmfw.LibInfo(
      lib,
      root:NewPathForceSlash("target/macaroni.cmake"))
    cmfw.ProjectInfo(
      project,
      root:NewPathForceSlash("target/pmacaroni.cmake"))
end
