project(falcon-module)

set(SOURCE_FILES falcon_module.c)
set(HEADER_FILES falcon_module.h)

configure_file(Kbuild.in Kbuild @ONLY)

prefix_path(SOURCE_FILES ${CMAKE_CURRENT_SOURCE_DIR} ${SOURCE_FILES})
prefix_path(HEADER_FILES ${CMAKE_CURRENT_SOURCE_DIR} ${HEADER_FILES})

add_custom_target(${PROJECT_NAME}
	COMMAND ${CMAKE_COMMAND} -E copy_if_different ${SOURCE_FILES} ${HEADER_FILES} ${CMAKE_CURRENT_BINARY_DIR}
	COMMAND pwd
	COMMAND make -f Kbuild
)