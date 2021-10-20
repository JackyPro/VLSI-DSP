%%
%{
Course    : Advanced Reaction Engineering
Coder     : JackyYen
Date      : 2020/12/15
Assignment: homework123
Version   : V1.0
%}
variable0=[448.15 0];
tspan=[0 45];%題目只有探討t從0~45的結果，所以方程式部分變成0
%tspan=[0 1000];
[t,y]=ode45(@ode_variable,tspan,variable0);
%plot(t,y(:,1),'r');
plot(t,y(:,1),'-o',t,y(:,2),'c*')
title('Solution of the Equation with ODE45');
xlabel('Time t');
ylabel('Solution y');
legend('y_1','y_2');
%  y_1表代入ode45初始值為448.15
%  y_2表代入ode45初始值為0