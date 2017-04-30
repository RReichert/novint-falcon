project(falcon_module)

add_custom_target(${PROJECT_NAME}
	COMMAND make
	WORKING DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)