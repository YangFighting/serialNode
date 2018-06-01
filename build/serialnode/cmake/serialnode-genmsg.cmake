# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "serialnode: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iserialnode:/home/yang/serial_catkin_ws/src/serialnode/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(serialnode_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg" NAME_WE)
add_custom_target(_serialnode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "serialnode" "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(serialnode
  "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/serialnode
)

### Generating Services

### Generating Module File
_generate_module_cpp(serialnode
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/serialnode
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(serialnode_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(serialnode_generate_messages serialnode_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg" NAME_WE)
add_dependencies(serialnode_generate_messages_cpp _serialnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serialnode_gencpp)
add_dependencies(serialnode_gencpp serialnode_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serialnode_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(serialnode
  "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/serialnode
)

### Generating Services

### Generating Module File
_generate_module_eus(serialnode
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/serialnode
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(serialnode_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(serialnode_generate_messages serialnode_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg" NAME_WE)
add_dependencies(serialnode_generate_messages_eus _serialnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serialnode_geneus)
add_dependencies(serialnode_geneus serialnode_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serialnode_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(serialnode
  "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/serialnode
)

### Generating Services

### Generating Module File
_generate_module_lisp(serialnode
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/serialnode
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(serialnode_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(serialnode_generate_messages serialnode_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg" NAME_WE)
add_dependencies(serialnode_generate_messages_lisp _serialnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serialnode_genlisp)
add_dependencies(serialnode_genlisp serialnode_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serialnode_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(serialnode
  "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/serialnode
)

### Generating Services

### Generating Module File
_generate_module_nodejs(serialnode
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/serialnode
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(serialnode_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(serialnode_generate_messages serialnode_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg" NAME_WE)
add_dependencies(serialnode_generate_messages_nodejs _serialnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serialnode_gennodejs)
add_dependencies(serialnode_gennodejs serialnode_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serialnode_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(serialnode
  "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serialnode
)

### Generating Services

### Generating Module File
_generate_module_py(serialnode
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serialnode
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(serialnode_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(serialnode_generate_messages serialnode_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yang/serial_catkin_ws/src/serialnode/msg/position.msg" NAME_WE)
add_dependencies(serialnode_generate_messages_py _serialnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(serialnode_genpy)
add_dependencies(serialnode_genpy serialnode_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS serialnode_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/serialnode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/serialnode
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(serialnode_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/serialnode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/serialnode
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(serialnode_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/serialnode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/serialnode
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(serialnode_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/serialnode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/serialnode
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(serialnode_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serialnode)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serialnode\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/serialnode
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(serialnode_generate_messages_py std_msgs_generate_messages_py)
endif()
