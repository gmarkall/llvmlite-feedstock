@rem Let CMake know about the LLVM install path, for find_package()
set CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%
set "LLVM_CONFIG=%LIBRARY_PREFIX%\bin\llvm_config.exe"
SET LIBPATH=%LIBRARY_LIB%
set PREFIX=%LIBRARY_PREFIX%
set "LDFLAGS=%LDFLAGS% /LIBPATH:%LIBRARY_LIB%"

@rem Ensure there are no build leftovers (CMake can complain)
if exist ffi\build rmdir /S /Q ffi\build

llvm-config.exe --libs

%PYTHON% -S setup.py install
if errorlevel 1 exit 1

%PYTHON% runtests.py
if errorlevel 1 exit 1
