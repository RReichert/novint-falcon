#
# Function is used to prepend entries with a common prefix.
#
#   set(FILES hello.cpp world.cpp)
#   prefix_path(FILES ABSOLUTE_FILES ${CMAKE_CURRENT_SOURCE_DIR} ${FILES})
#
# ABSOLUTE_FILES variable will contain the following entries:
#
#   ${CMAKE_CURRENT_SOURCE_DIR}/hello.cpp
#   ${CMAKE_CURRENT_SOURCE_DIR}/world.cpp
#
# NOTE: the CMAKE_CURRENT_SOURCE_DIR is merely a placeholder
#
function(PREFIX_PATH variable prefix)

	set(entries "")

	foreach(entry ${ARGN})
		list(APPEND entries "${prefix}/${entry}")
	endforeach()

	set(${variable} "${entries}" PARENT_SCOPE)

endfunction()