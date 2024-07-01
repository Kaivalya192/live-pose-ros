# live-pose-ros

Intel RealSense Depth Camera compatible `ROS neotic` package for live 6 DOF pose estimation.

<br>Publishes topics 1)Pose (transformation matrix) and 2)Visual output (image)

## Table of Contents

- [Installation](#installation)
- [Preparation](#preparation)
- [Usage](#usage)

## Installation

1. **Clone the repository**:
    ```sh
    cd ~/catkin_ws/src
    git clone https://github.com/Kaivalya192/live-pose.git
    cd live-pose
    ```

## Preparation

### Docker Build

1. **Build the Docker container**:
    ```sh
    cd docker
    docker build --network host -t foundationpose-ros-neotic .
    ```

2. **Install Weights**:
   - Download the weights from [this link](https://drive.google.com/drive/folders/1wJayPZzZLZb6sxm6EeOQCJvzOAibJ693?usp=sharing) and place them under `src/weights`.

## Usage

### Running the Container

1. **Run the container**:
    ```sh
    bash docker/run_container.sh
    ```
    note: To run on windows install `Cygwin` and execute `./docker/run_container_win.sh`

### Configure Catkin workspace
1. **Build**:
    ```sh
    catkin build
    ```

### Running the Node

1. **Run the live pose estimation**:
    ```sh
    source devel/setup.bash
    rosrun live-pose node.py
    ```
   
3. **Locate the .obj file**:
    <br> Note: For novel object you can use [Object Recustruction Framework](https://github.com/Kaivalya192/Object_Reconstruction) </br>
    
4. **Masking**:
    <br> here select the Boundry points of object in first frame </br>
