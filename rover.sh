#!/bin/bash
./ardupilot-driver/launch.sh

cd Resurgence
./enable_CAN_and_GPS.sh
mkdir -p build
cd build
cmake ../src
make -j Rover
./Rover -p arm
