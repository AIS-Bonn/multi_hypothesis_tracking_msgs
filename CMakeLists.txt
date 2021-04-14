cmake_minimum_required(VERSION 2.8)
project(multi_hypothesis_tracking_msgs)

set(CMAKE_BUILD_TYPE RelWithDebInfo)

find_package(catkin REQUIRED COMPONENTS
	geometry_msgs
	std_msgs
	sensor_msgs
	message_generation
	genmsg
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
	std_msgs
	geometry_msgs
	sensor_msgs
)

catkin_package(
	CATKIN_DEPENDS message_runtime std_msgs geometry_msgs sensor_msgs
)

include_directories(
	${catkin_INCLUDE_DIRS}
)
