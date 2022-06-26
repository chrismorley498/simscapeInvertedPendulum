# simscapeSelfBalancingPendulum
This repo demonstrates the control of an inverted pendulum. This system approximated as a linear system about the operating point (up-right vertical position). Control gains can either be chosen to satisfy desired closed loop system poles or can be choosen to minimze a cost function.

## Instructions
1. Set MATLAB directory to path containing all files in repo
2. Run the script titled: pendulumAssembly_DataFile1.m
3. Run the first section of the script titled: Script_SlidingPendulum.m
4. a) To choose feedback gains that satisfy desired closed loop poles requirements run the second section. You can change the desired poles by changing the values of the variable named 'eigs.'
4. b) To choose feedback gains that minimize a cost function, run the third section of Script_SlidingPendulum.m
