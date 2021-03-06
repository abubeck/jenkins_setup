#!/bin/bash
export WORKSPACE=$1
export DIR=$WORKSPACE/jenkins_setup/scripts/graphicTest/host

# Configure VGL on the server so we can access display :0, even
# if no user is logged in.
$DIR/setupVgl.bash &&

# Download the the exact same version of the nvidia-driver and
# store it in /tmp so we can install it in the chroot. That's
# necessary for glx to work.
# The host system is required to use an nvidia driver at the
# moment.
$DIR/downloadNvidiaDriver.bash
