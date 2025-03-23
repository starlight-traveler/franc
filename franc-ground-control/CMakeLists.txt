cmake_minimum_required(VERSION 3.15)
project(FRANC-GROUND)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(lib/quill)
add_subdirectory(lib/imgui)
add_subdirectory(lib/subprocess)

# Try to find SDL2
find_package(SDL2 REQUIRED)
find_package(OpenGL REQUIRED)
set(GLEW_INCLUDE_DIRS "/opt/homebrew/include")
set(GLEW_LIBRARIES "-L/opt/homebrew/lib -lGLEW")

include_directories(
    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/lib/quill/include
    ${PROJECT_SOURCE_DIR}/lib/imgui
    ${SDL2_INCLUDE_DIRS}
    ${GLEW_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME} src/main.cpp 
                                src/logger.cpp 
                                src/application.cpp 
                                src/app_log.cpp)

target_link_libraries(${PROJECT_NAME} PRIVATE
    quill
    imgui
    subprocess
    ${SDL2_LIBRARIES}
    ${OPENGL_LIBRARIES}
    ${GLEW_LIBRARIES}
)
