close all
clear variables
clear classes
clear all

format long e

%  initialize
ao = EnvelopeDetector();

%  ao.N_big = 50;

ao.setup();

%  solve by backward euler
tic
xfe1 = solve_by_be( @ao.f , ao.t , 0 );
toc

%  solve by backward euler
tic
xfe2 = solve_by_trpz( @ao.f , ao.t , 0 );
toc

%  plot backward euler result
figure;
hobe = plot(ao.t,xfe1,'LineWidth',2);
hold off;
hold on;
hi = plot(ao.t,ao.xOutput,'Color','r','LineWidth',2);
hold off;

xlabel('time (sec)')
title('Envelope Detector - Input and Output')
legend([hobe hi],'output (be)','input','Location','South','Orientation','Horizontal')
grid on;

%  plot trapezoidal scheme result
figure;
htrpz = plot(ao.t,xfe2,'LineWidth',2);
hold off;
hold on;
hi = plot(ao.t,ao.xOutput,'Color','r','LineWidth',2);
hold off;

xlabel('time (sec)')
title('Envelope Detector - Input and Output')
legend([htrpz hi],'output (trpz)','input','Location','South','Orientation','Horizontal')
grid on;
