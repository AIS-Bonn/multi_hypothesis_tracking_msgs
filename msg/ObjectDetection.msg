# The mean of all points corresponding to one detection cluster.
geometry_msgs/Point centroid

# Approximate covariance matrix of this detection
float32 position_covariance_xx
float32 position_covariance_xy
float32 position_covariance_xz
float32 position_covariance_yy
float32 position_covariance_yz
float32 position_covariance_zz

# Intensity Histogram - numbers in observation_ratios specify ratio of this bin's
#    observations to the sum of all observations
# uint8 number_of_bins
# float32[] observation_ratios

# Points that were assigned to this detection
sensor_msgs/PointCloud2 cloud

# Indices of points that were assigned to this detection
uint32[] point_ids

# Flag to mark those detections that don't fit the real description 
bool class_a_detection
