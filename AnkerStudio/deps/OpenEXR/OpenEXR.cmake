prusaslicer_add_cmake_project(OpenEXR
    # GIT_REPOSITORY https://github.com/openexr/openexr.git
    # Note: We might want to change this back to v2.5.5 and instead include the patch from PrusaSlicer
    URL https://github.com/AcademySoftwareFoundation/openexr/archive/refs/tags/v2.5.9.zip
    URL_HASH SHA256=3b23a2b16b09ab0419db5e1517d2e81b41b4b32606f95169a83e320504f0976f
    DEPENDS ${ZLIB_PKG}
    GIT_TAG v2.5.9
    CMAKE_ARGS
        -DCMAKE_POSITION_INDEPENDENT_CODE=ON
        -DBUILD_TESTING=OFF 
        -DPYILMBASE_ENABLE:BOOL=OFF 
        -DOPENEXR_VIEWERS_ENABLE:BOOL=OFF
        -DOPENEXR_BUILD_UTILS:BOOL=OFF
)

if (MSVC)
    add_debug_dep(dep_OpenEXR)
endif ()
