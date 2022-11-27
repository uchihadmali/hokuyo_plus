# Install script for directory: /home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_sensor_collection/msg" TYPE FILE FILES
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/DataXYZ.msg"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EulerData.msg"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/QuaternionData.msg"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/SensorData3D.msg"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/OrientationSensorData.msg"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/ImuData.msg"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/GpsData.msg"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/EncoderData.msg"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/msg/BatteryData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_sensor_collection/cmake" TYPE FILE FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/build/gazebo_sensor_collection/catkin_generated/installspace/gazebo_sensor_collection-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/devel/include/gazebo_sensor_collection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/devel/share/roseus/ros/gazebo_sensor_collection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/devel/share/common-lisp/ros/gazebo_sensor_collection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/devel/share/gennodejs/ros/gazebo_sensor_collection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/devel/lib/python3/dist-packages/gazebo_sensor_collection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/devel/lib/python3/dist-packages/gazebo_sensor_collection")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/build/gazebo_sensor_collection/catkin_generated/installspace/gazebo_sensor_collection.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_sensor_collection/cmake" TYPE FILE FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/build/gazebo_sensor_collection/catkin_generated/installspace/gazebo_sensor_collection-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_sensor_collection/cmake" TYPE FILE FILES
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/build/gazebo_sensor_collection/catkin_generated/installspace/gazebo_sensor_collectionConfig.cmake"
    "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/build/gazebo_sensor_collection/catkin_generated/installspace/gazebo_sensor_collectionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_sensor_collection" TYPE FILE FILES "/home/mali/hokuyo_repo/hokuyo_plus/ros/hokuyo_ws/src/gazebo_sensor_collection/package.xml")
endif()

