# Version for Yuuki Asuna mod

find_package(Git)
find_package(Ruby)
execute_process(
    COMMAND
    ${GIT_EXECUTABLE} describe --abbrev=0 --tags
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    OUTPUT_VARIABLE X265_LATEST_TAG
    ERROR_QUIET
    OUTPUT_STRIP_TRAILING_WHITESPACE
    )

execute_process(
    COMMAND
    ${RUBY_EXECUTABLE} version.rb
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    OUTPUT_VARIABLE X265_VERSION
    ERROR_QUIET
    OUTPUT_STRIP_TRAILING_WHITESPACE
    )

execute_process(
    COMMAND
    ${GIT_EXECUTABLE} symbolic-ref --short HEAD
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    OUTPUT_VARIABLE MOD_BUILD
    ERROR_QUIET
    OUTPUT_STRIP_TRAILING_WHITESPACE
    )

message(STATUS "x265 Release Version ${X265_VERSION}")
