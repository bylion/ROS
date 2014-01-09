# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "turtle_kinect: 0 messages, 0 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtle_kinect_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(turtle_kinect
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle_kinect
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtle_kinect_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtle_kinect_generate_messages turtle_kinect_generate_messages_cpp)

# target for backward compatibility
add_custom_target(turtle_kinect_gencpp)
add_dependencies(turtle_kinect_gencpp turtle_kinect_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_kinect_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(turtle_kinect
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle_kinect
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtle_kinect_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtle_kinect_generate_messages turtle_kinect_generate_messages_lisp)

# target for backward compatibility
add_custom_target(turtle_kinect_genlisp)
add_dependencies(turtle_kinect_genlisp turtle_kinect_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_kinect_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(turtle_kinect
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_kinect
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtle_kinect_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtle_kinect_generate_messages turtle_kinect_generate_messages_py)

# target for backward compatibility
add_custom_target(turtle_kinect_genpy)
add_dependencies(turtle_kinect_genpy turtle_kinect_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_kinect_generate_messages_py)


debug_message(2 "turtle_kinect: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle_kinect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle_kinect
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(turtle_kinect_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(turtle_kinect_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle_kinect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle_kinect
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(turtle_kinect_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(turtle_kinect_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_kinect)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_kinect\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_kinect
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(turtle_kinect_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(turtle_kinect_generate_messages_py std_msgs_generate_messages_py)
