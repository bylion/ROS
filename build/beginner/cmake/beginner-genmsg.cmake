# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "beginner: 1 messages, 2 services")

set(MSG_I_FLAGS "-Ibeginner:/home/bai/catkin_ws/src/beginner/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(beginner_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(beginner
  "/home/bai/catkin_ws/src/beginner/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
)

### Generating Services
_generate_srv_cpp(beginner
  "/home/bai/catkin_ws/src/beginner/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
)
_generate_srv_cpp(beginner
  "/home/bai/catkin_ws/src/beginner/srv/AddThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
)

### Generating Module File
_generate_module_cpp(beginner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(beginner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(beginner_generate_messages beginner_generate_messages_cpp)

# target for backward compatibility
add_custom_target(beginner_gencpp)
add_dependencies(beginner_gencpp beginner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(beginner
  "/home/bai/catkin_ws/src/beginner/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
)

### Generating Services
_generate_srv_lisp(beginner
  "/home/bai/catkin_ws/src/beginner/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
)
_generate_srv_lisp(beginner
  "/home/bai/catkin_ws/src/beginner/srv/AddThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
)

### Generating Module File
_generate_module_lisp(beginner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(beginner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(beginner_generate_messages beginner_generate_messages_lisp)

# target for backward compatibility
add_custom_target(beginner_genlisp)
add_dependencies(beginner_genlisp beginner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(beginner
  "/home/bai/catkin_ws/src/beginner/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
)

### Generating Services
_generate_srv_py(beginner
  "/home/bai/catkin_ws/src/beginner/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
)
_generate_srv_py(beginner
  "/home/bai/catkin_ws/src/beginner/srv/AddThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
)

### Generating Module File
_generate_module_py(beginner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(beginner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(beginner_generate_messages beginner_generate_messages_py)

# target for backward compatibility
add_custom_target(beginner_genpy)
add_dependencies(beginner_genpy beginner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_generate_messages_py)


debug_message(2 "beginner: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(beginner_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(beginner_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(beginner_generate_messages_py std_msgs_generate_messages_py)
