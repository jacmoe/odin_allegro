cmake_minimum_required(VERSION 3.28)

project(odin_allegro)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_INSTALL_PREFIX ../allegro)

include(FetchContent)

FetchContent_Declare(
  allegro5
  GIT_REPOSITORY https://github.com/jacmoe/allegro5.git
  GIT_TAG        v52101
)

FetchContent_GetProperties(allegro5)
if(NOT allegro5_POPULATED)
  FetchContent_MakeAvailable(allegro5)
endif()
