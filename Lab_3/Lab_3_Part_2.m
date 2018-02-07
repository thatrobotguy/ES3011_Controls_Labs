close all; clear all; clc
syms s;

Induct = 5;             % Henries
Cap = 300;              % Farads
Resist = 100000;        % Ohms 100k ohms    
Volts = 5;              % Input Voltage

A = ([0 1; 1/(Cap*Induct) Resist/Induct]);
B = ([0; -1/Induct]);  C = ([1 0; 0 0]);    D = ([0; 0]);

phi = inv((s.*eye(2))-A);                 H = C*phi*B+D;
pretty(simplify(H));

mytf = tf([0 0 300], [-1500 30000000 1]);
mytf2 = tf([0 0 0 300], [-1500 30000000 1 0]);
% step(mytf);
impulse(mytf);
% step(mytf2);
% disp(stepinfo(step(mytf)));
disp(stepinfo(impulse(mytf)));