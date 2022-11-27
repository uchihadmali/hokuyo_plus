# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gazebo_sensor_collection: 9 messages, 0 services")

set(MSG_I_FLAGS "-Igazebo_sensor_collection:/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg;-Igazebo_sensor_collection:/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gazebo_sensor_collection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg" ""
)

get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg" ""
)

get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg" ""
)

get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg" "gazebo_sensor_collection/DataXYZ"
)

get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg" "gazebo_sensor_collection/EulerData:gazebo_sensor_collection/QuaternionData"
)

get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg" "gazebo_sensor_collection/OrientationSensorData:gazebo_sensor_collection/QuaternionData:gazebo_sensor_collection/SensorData3D:gazebo_sensor_collection/EulerData:gazebo_sensor_collection/DataXYZ"
)

get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg" "gazebo_sensor_collection/DataXYZ"
)

get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg" ""
)

get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg" NAME_WE)
add_custom_target(_gazebo_sensor_collection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_sensor_collection" "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_cpp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
)

### Generating Services

### Generating Module File
_generate_module_cpp(gazebo_sensor_collection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gazebo_sensor_collection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gazebo_sensor_collection_generate_messages gazebo_sensor_collection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_cpp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_sensor_collection_gencpp)
add_dependencies(gazebo_sensor_collection_gencpp gazebo_sensor_collection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_sensor_collection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_eus(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
)

### Generating Services

### Generating Module File
_generate_module_eus(gazebo_sensor_collection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gazebo_sensor_collection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gazebo_sensor_collection_generate_messages gazebo_sensor_collection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_eus _gazebo_sensor_collection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_sensor_collection_geneus)
add_dependencies(gazebo_sensor_collection_geneus gazebo_sensor_collection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_sensor_collection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_lisp(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
)

### Generating Services

### Generating Module File
_generate_module_lisp(gazebo_sensor_collection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gazebo_sensor_collection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gazebo_sensor_collection_generate_messages gazebo_sensor_collection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_lisp _gazebo_sensor_collection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_sensor_collection_genlisp)
add_dependencies(gazebo_sensor_collection_genlisp gazebo_sensor_collection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_sensor_collection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_nodejs(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
)

### Generating Services

### Generating Module File
_generate_module_nodejs(gazebo_sensor_collection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gazebo_sensor_collection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gazebo_sensor_collection_generate_messages gazebo_sensor_collection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_nodejs _gazebo_sensor_collection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_sensor_collection_gennodejs)
add_dependencies(gazebo_sensor_collection_gennodejs gazebo_sensor_collection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_sensor_collection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg;/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg"
  "${MSG_I_FLAGS}"
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)
_generate_msg_py(gazebo_sensor_collection
  "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
)

### Generating Services

### Generating Module File
_generate_module_py(gazebo_sensor_collection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gazebo_sensor_collection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gazebo_sensor_collection_generate_messages gazebo_sensor_collection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg" NAME_WE)
add_dependencies(gazebo_sensor_collection_generate_messages_py _gazebo_sensor_collection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_sensor_collection_genpy)
add_dependencies(gazebo_sensor_collection_genpy gazebo_sensor_collection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_sensor_collection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_sensor_collection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(gazebo_sensor_collection_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(gazebo_sensor_collection_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()
if(TARGET gazebo_sensor_collection_generate_messages_cpp)
  add_dependencies(gazebo_sensor_collection_generate_messages_cpp gazebo_sensor_collection_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_sensor_collection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(gazebo_sensor_collection_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(gazebo_sensor_collection_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()
if(TARGET gazebo_sensor_collection_generate_messages_eus)
  add_dependencies(gazebo_sensor_collection_generate_messages_eus gazebo_sensor_collection_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_sensor_collection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(gazebo_sensor_collection_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(gazebo_sensor_collection_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()
if(TARGET gazebo_sensor_collection_generate_messages_lisp)
  add_dependencies(gazebo_sensor_collection_generate_messages_lisp gazebo_sensor_collection_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_sensor_collection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(gazebo_sensor_collection_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(gazebo_sensor_collection_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()
if(TARGET gazebo_sensor_collection_generate_messages_nodejs)
  add_dependencies(gazebo_sensor_collection_generate_messages_nodejs gazebo_sensor_collection_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_sensor_collection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(gazebo_sensor_collection_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(gazebo_sensor_collection_generate_messages_py visualization_msgs_generate_messages_py)
endif()
if(TARGET gazebo_sensor_collection_generate_messages_py)
  add_dependencies(gazebo_sensor_collection_generate_messages_py gazebo_sensor_collection_generate_messages_py)
endif()
