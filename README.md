# bulletphysics
This repo contains pre-build Bullet Physics binaries for the 12 games project and its build.cmd file where the binaries were build with.

This build.cmd accepts two parameters. First the generator it should use to call cmake with. The options here are dependant on you cmake version, you can check them by running ``cmake --help``.

The second is the installation path the build artifacts (.lib, .dll and .h files) should be copied too. When this is not given, a folder will be added to the root of this repo with the name of the cmake generator used. 
