@rem Let CMake know about the LLVM install path, for find_package()
set CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%
set ZLIB_ROOT_DIR=%LIBRARY_PREFIX%
set LLVM_CONFIG=%LIBRARY_PREFIX%\bin\llvm_config.exe
set CMAKE_GENERATOR=Visual Studio 15 2017 Win64
set ZLIB_NAME=zlib
set ZLIB_LIBRARY_PATH=%LIBRARY_LIB%
set ZLIB_INCLUDE=%LIBRARY_INC%


@rem Ensure there are no build leftovers (CMake can complain)
if exist ffi\build rmdir /S /Q ffi\build

%PYTHON% -S setup.py install
if errorlevel 1 exit 1

%PYTHON% runtests.py
if errorlevel 1 exit 1
