pushd %cd%

IF EXIST build\bullet3 GOTO doneClone

mkdir build

copy CMakeLists.txt build

git clone https://github.com/bulletphysics/bullet3.git build\bullet3

:doneClone

cd build
IF NOT EXIST "MinGW Makefiles" mkdir "MinGW Makefiles"

cd "MinGW Makefiles"
cmake -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX:PATH="..\..\MinGW Makefiles" ..\
cmake --build . --target all
cmake --build . --target install

popd