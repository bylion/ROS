# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "t1: 13 messages, 26 services")

set(MSG_I_FLAGS "-It1:/home/bai/catkin_ws/src/t1/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(t1_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(t1
  "/home/bai/catkin_ws/src/t1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/t1
)

### Generating Services
_generate_srv_cpp(t1
  "/home/bai/catkin_ws/src/t1/srv/ThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/t1
)
_generate_srv_cpp(t1
  "/home/bai/catkin_ws/src/t1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/t1
)

### Generating Module File
_generate_module_cpp(t1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/t1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(t1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(t1_generate_messages t1_generate_messages_cpp)

# target for backward compatibility
add_custom_target(t1_gencpp)
add_dependencies(t1_gencpp t1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS t1_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(t1
  "/home/bai/catkin_ws/src/t1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/t1
)

### Generating Services
_generate_srv_lisp(t1
  "/home/bai/catkin_ws/src/t1/srv/ThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/t1
)
_generate_srv_lisp(t1
  "/home/bai/catkin_ws/src/t1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/t1
)

### Generating Module File
_generate_module_lisp(t1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/t1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(t1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(t1_generate_messages t1_generate_messages_lisp)

# target for backward compatibility
add_custom_target(t1_genlisp)
add_dependencies(t1_genlisp t1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS t1_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(t1
  "/home/bai/catkin_ws/src/t1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/t1
)

### Generating Services
_generate_srv_py(t1
  "/home/bai/catkin_ws/src/t1/srv/ThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/t1
)
_generate_srv_py(t1
  "/home/bai/catkin_ws/src/t1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/t1
)

### Generating Module File
_generate_module_py(t1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/t1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(t1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(t1_generate_messages t1_generate_messages_py)

# target for backward compatibility
add_custom_target(t1_genpy)
add_dependencies(t1_genpy t1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS t1_generate_messages_py)


debug_message(2 "t1: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/t1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/t1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(t1_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/t1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/t1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(t1_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/t1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/t1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/t1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(t1_generate_messages_py std_msgs_generate_messages_py)
