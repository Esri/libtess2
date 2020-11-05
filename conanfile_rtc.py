from conans import ConanFile


class Tess2Conan(ConanFile):
    name = "tess2"
    version = "1.0.1"
    url = "https://github.com/Esri/libtess2/tree/runtimecore"
    license = "https://github.com/Esri/libtess2/blob/runtimecore/LICENSE.txt"
    description = "Game and tools oriented refactored version of GLU tesselator."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/libtess2/"

        # headers
        self.copy("tesselator.h", src=base + "Include", dst=relative + "Include")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
