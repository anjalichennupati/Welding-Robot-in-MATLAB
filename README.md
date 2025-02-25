
# Welding Robot using MATLAB

# Overview

This project implements a welding robot in MATLAB using Denavit-Hartenberg (DH) parameters for kinematic modeling. The robot performs automated welding, including spot welding and welding along predefined shapes like lines, squares, rectangles, and circles.




## Block Diagram

- The below block diagram gives an overview of the overall funtionality of the implemented project
<p align="center">
  <img src="https://i.postimg.cc/WzVtbf8M/Picture1.png" alt="App Screenshot" width="500">
</p>

## Features

- **Robotic Welding with DH Parameters**: A 6-DOF manipulator, Mipie, is implemented using MATLAB's SerialLink() function. The DH parameters define the robot’s structure and movement, enabling accurate path planning.
<p align="center">
  <img src="https://i.postimg.cc/sft1Xx6V/Picture2.png" alt="App Screenshot" width="400">
</p>


- **Automated Welding on Predefined Shapes**: The robot is programmed to weld along lines, squares, circles, and rectangles based on user-defined coordinates. Transformation matrices and inverse kinematics ensure precise execution of the welding path.
https://github.com/user-attachments/assets/64bc2b09-e6f2-44fe-a580-973dcedec0d1



- **Spot Welding Implementation**: Spot welding is achieved using a mathematical interpolation formula between two given points. The robot moves through the calculated trajectory to perform spot welding efficiently.
<p align="center">
  <img src="https://i.postimg.cc/kg5pVJh5/vf.png" alt="App Screenshot" width="200">
</p>


- **Inverse Kinematics for Motion Planning**: The ikine() function computes joint angles to achieve a desired end-effector position. This enables the robot to adjust its movements dynamically while welding.





## Tech Stack

- **MATLAB** – Used for simulation and visualization of robotic welding.
- **Robotics Toolbox** – Utilized for DH parameter modeling and inverse kinematics.
- **SerialLink() Function** – Defines the manipulator for welding operations.
- **ikine() Function** – Calculates inverse kinematics for motion planning.

## Installation

1. **Load the MNIST Dataset**:
- Run the script (draw_Manipulator.m) to initialize the welding robot.
- Input coordinates to perform different types of welding.




## Running Tests

The project can be implemented and tested to verify funtionality

