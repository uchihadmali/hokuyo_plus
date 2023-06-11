# Hokuyo Plus Project
> This project is about designing a low cost and high resolution Lidar.
> Live demo [_here_](https://www.example.com). <!-- If you have the project hosted somewhere, include the link here. -->

## Table of Contents
* [Technologies Used](#technologies-used)
* [Setup](#setup)
* [User Guides](#usage)
* [Developer Guides](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Contact](#contact)
<!-- * [License](#license) -->


## Technologies Used
- ROS noetic 
- Visual Studio Code
- Arduino IDE 1.8.19

## Screenshots
![Hokuyo Plus Robot](./img/screenshot.png)

## Setup
What are the project requirements/dependencies? Where are they listed? A requirements.txt or a Pipfile.lock file perhaps? Where is it located?

Proceed to describe how to install / setup one's local environment / get started with the project.


## User Guides
### Running Real System
- Connect your PC to the Arduino Board and upload the voltage_control.ino code.
- Remove the connection between the 8-pin Hokuyo connector and the Hokuyo sensor.
- Connect the blue and brown ends of the Hokuyo connector to the voltage supply. Adjust the voltage to the 5V.
- Connect the 8-pin Hokuyo connector and the Hokuyo sensor. Make sure that the VCC and ground connections are correct.
- Connect the USB connection of the Hokuyo sensor and the PC.
- Open terminal and go to the workspace directory. Open different tabs and source them by the following command;

`source ./devel/setup.bash`
- Run the following commands in different terminals;

`roscore`

`rosrun rosserial_python serial_node.py /dev/ttyACM0`

`rosrun urg_node urg_node _serial_port:=/dev/ttyACM1`

`rosrun rviz rviz`
- In the opened Rviz window, do the followings;

Change "Global Options->Fixed Frame" to "map".

Add "PointCloud2".

Change "PointCloud2->Topic" to "/output".

- Run the following commands. This will initiate the mechanism movement and data should be seen on rviz.

`rosrun hokuyo_go laser_real`

- To stop the mechanism, disconnect the motor connections, kill all terminals and upload the voltage_control.ino code to the Arduino Board.
### Running Simulation
`write-your-code-here`


## Project Status
Project is: _in progress_ / _complete_ / _no longer being worked on_. If you are no longer working on it, provide reasons why.


## Room for Improvement
Include areas you believe need improvement / could be improved. Also add TODOs for future development.

Room for improvement:
- Improvement to be done 1
- Improvement to be done 2

To do:
- Feature to be added 1
- Feature to be added 2


## Acknowledgements
Give credit here.
- This project was inspired by...
- This project was based on [this tutorial](https://www.example.com).
- Many thanks to...


## Contact
Created by [@uchihadmali](https://www.flynerd.pl/) - feel free to contact me!


<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->

<!-- You don't have to include all sections - just the one's relevant to your project -->
