#!/bin/bash

# Initialize turtlesim and set the initial pen color
initialize_turtlesim() {
    rosrun turtlesim turtlesim_node &
    sleep 2
    rosservice call /turtle1/set_pen '0 0 255 2 0'  # Blue color for 'T'
}

# Function to draw the letter 'T'
draw_T() {
    rosrun turtlesim turtle_teleport_absolute 5.5 10.5 0
    rosrun turtlesim turtle_teleport_relative 5.0 0
    rosrun turtlesim turtle_teleport_absolute 8.0 10.5 4.71239
    rosrun turtlesim turtle_teleport_relative 5.0 0
}

# Function to draw the letter 'A'
draw_A() {
    rosservice call /turtle1/set_pen '255 0 0 2 0'  # Red color for 'A'
    rosrun turtlesim turtle_teleport_absolute 2.0 5.5 0
    rosrun turtlesim turtle_teleport_relative 5.0 0
    rosrun turtlesim turtle_teleport_absolute 6.5 5.5 0.785398
    rosrun turtlesim turtle_teleport_relative 7.07 0
    rosrun turtlesim turtle_teleport_absolute 11.0 5.5 5.49779
    rosrun turtlesim turtle_teleport_relative 7.07 0
    rosrun turtlesim turtle_teleport_absolute 6.5 5.5 3.14159
    rosrun turtlesim turtle_teleport_relative 3.5355 0
}

# Main script execution
initialize_turtlesim
draw_T
draw_A
