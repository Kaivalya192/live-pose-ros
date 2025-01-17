docker rm -f foundationpose-ros-neotic
DIR=$(pwd)/
xhost +  && docker run --gpus all --env NVIDIA_DISABLE_REQUIRE=1 -it --privileged --network=host --name foundationpose-ros-neotic  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v $DIR:$DIR -v /home:/home -v /mnt:/mnt -v /tmp/.X11-unix:/tmp/.X11-unix -v /tmp:/tmp -v /dev/bus/usb:/dev/bus/usb --ipc=host -e DISPLAY=${DISPLAY} -e GIT_INDEX_FILE foundationpose-ros-neotic:latest bash -c "cd $DIR && bash"
