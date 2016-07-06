from conans import ConanFile, CMake
from conans import tools


class SolaceConan(ConanFile):
    name = "Solace"
    version = "1.0.0.0"
    requires = ("Boost/1.60.0@lasote/stable")
    settings = "os", "compiler", "build_type", "arch"
    generators = "cmake"

    def build(self):
        root = self.conanfile_directory
        cmd =  'macaroni {root} --generate'.format(root=root)

        self.run("cd %s && %s" % (self.conanfile_directory, cmd))
        cmake = CMake(self.settings)
        self.run('cmake %s %s' % (self.conanfile_directory, cmake.command_line))
        self.run("cmake --build . %s" % cmake.build_config)
