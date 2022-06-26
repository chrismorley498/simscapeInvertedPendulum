%% 1. Initialization
b=0.002;
m=0.04;
M=0.2;
g=9.81;
l=0.15;

%Define our A & B matrix
A=[0 1 0 0;0 -b/M -m*g/M b/m; 0 0 0 1; 0 b/(M*l) (g/l)-(m*g)/(M*l) -2*b/(m*l)];
B=[0; 1/M; 0; -1/(M*l)] ;

%% 2. Calculate gains to satisfy desired poles
eigs=[-1.2 -1.3 -1.4 -1.5];
K=place(A,B,eigs);

%% 3. Calculate gains to minimize cost function
Q=[100 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
R=0.001;
K=lqr(A,B,Q,R);