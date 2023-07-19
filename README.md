# U14553-Just Me:) 

## Introduction
In response to the usage of 3D printers and the monitoring of possible errors it is imperative that there is the usage of a monitoring system. This will allow for quick recovery from any errors that may occur during the machines usage. In order to do this a caerma system can be used to capture images to monitor many aspects such as: malfunction, lack of materials and any other errors that could possibly occur. In order to program this device the scripts provided in this area should be run to ensure it is correctly set up in order to log and monitor the systems correctly.

## Prerequisites
The prerequisites for this system are and internet connection and access to a device in which the files created by the camera devices can be accessed. This will also provide a means of updating or adjusting the scripts to best suit the needs of those who wish to monitor the machines.

## Installation 
Once each device is physically set up the scripts can be run using the kernal that controls the monitoring device. In order to do this the user will need to input: 'chmod +x logging.sh', 'chmod +x log_rotation.sh' and 'chmod +x gitrepo.sh'.

## Other
Each script that is included will need to be slightly adjusted depending on the requirements and preferences of the user:

LOGGING.SH - Should not require any adjustment

LOG_ROTATION.SH  - The log directory should be changed to the path of the original log files, this can be different depending on where the user requires the files tobe saved. The maximum number of archives is currently set to 1000 however, this can also be adjusted to suit the users needs.

GITREPO.SH - The path to the git repository should be set here to suit the users needs.

## Contributors
Chelsea Pullan
