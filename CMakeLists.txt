cmake_minimum_required(VERSION 2.8)
project(multi_hypothesis_tracking_msgs)

set(CMAKE_BUILD_TYPE RelWithDebInfo)

set(ROS_MSGS_PACKAGES
  geometry_msgs
  sensor_msgs
  std_msgs
)

find_package(catkin REQUIRED COMPONENTS
  genmsg
  message_generation
  ${ROS_MSGS_PACKAGES}
)

add_message_files(
  FILES
  Box.msg
  EvaluationBox.msg
  HypothesesBoxes.msg
  HypothesesBoxesArray.msg
  HypothesesEvaluationBoxes.msg
  HypothesesFull.msg
  HypothesesPointIndices.msg
  HypothesesStates.msg
  ObjectDetection.msg
  ObjectDetections.msg
  State.msg
)

generate_messages(
  DEPENDENCIES
  ${ROS_MSGS_PACKAGES}
)

catkin_package(
  CATKIN_DEPENDS message_runtime ${ROS_MSGS_PACKAGES}
)

include_directories(
	${catkin_INCLUDE_DIRS}
)
