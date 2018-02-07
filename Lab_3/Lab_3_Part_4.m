close all; clear all; clc ; syms s;
J = 3E-6;       % kg.m^2                      
b = 3.5E-6;      % N.s/m
K = 0.025; % 0.025 Volts/radians/second  K
R = 5;             % Ohms
L = 3E-6;          % Henries

A = ([0 1 0; 0 -b/J K/J; 0 -K/L -R/L]); B = ([0; 0; 1/L]);  C = ([0 1 0]);   

phi = inv((s.*eye(3))-A);   H = C*phi*B;
pretty(simplify(H));

mytf1 = tf([0 0 107374182399999993750], ...
[38654705664    64424554537156602       2759516487679999993 ]);
mytf2 = tf([0 0 0 107374182399999993750], ...
[38654705664    64424554537156602       2759516487679999993    0  ]);
figure(1);
step(mytf1);
figure(2);
impulse(mytf1);
figure(3);
step(mytf2);
disp(stepinfo(step(mytf2)));