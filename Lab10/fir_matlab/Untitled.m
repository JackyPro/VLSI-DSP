%%
%{
Course    : Advanced Reaction Engineering
Coder     : JackyYen
Date      : 2020/12/15
Assignment: homework123
Version   : V1.0
%}
variable0=[448.15 0];
tspan=[0 45];%�D�إu�����Qt�q0~45�����G�A�ҥH��{�������ܦ�0
%tspan=[0 1000];
[t,y]=ode45(@ode_variable,tspan,variable0);
%plot(t,y(:,1),'r');
plot(t,y(:,1),'-o',t,y(:,2),'c*')
title('Solution of the Equation with ODE45');
xlabel('Time t');
ylabel('Solution y');
legend('y_1','y_2');
%  y_1��N�Jode45��l�Ȭ�448.15
%  y_2��N�Jode45��l�Ȭ�0