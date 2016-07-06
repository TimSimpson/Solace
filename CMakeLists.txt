project(Solace CXX)
cmake_minimum_required(VERSION 2.8)


include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

include(target/macaroni.cmake)


include_directories(
    src
    target
    ${CONAN_INCLUDE_DIRS})


add_library(lib
    ${MACARONI_LIBS_lib_CPP_FILES}
    ${MACARONI_LIBS_lib_MCPP_FILES})

set_source_files_properties(
    ${MACARONI_LIBS_lib_SRC_FILES}
    PROPERTIES HEADER_FILE_ONLY TRUE)

target_link_libraries(lib ${CONAN_LIBS})
add_executable(solace
    target/solace.cpp)

target_link_libraries(solace lib)
