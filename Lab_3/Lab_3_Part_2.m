close all; clear all; clc; syms s;

Induct = 5;             % Henries
Cap = 300;              % Farads
Resist = 100;           % Ohms 100k ohms    
Volts = 5;              % Input Voltage

A =([0 1; -1/(Cap*Induct) -Resist/Induct]);
B =([0; 1/Induct]); C =([1 0; 0 0]); D =([0; 0]);
phi = inv((s.*eye(2))-A); H = C*phi*B+D;
pretty(simplify(H));

% mytf1 = tf([0 0 300], [1500 30000 1]); mytf2 = tf([0 0 0 300], [1500 30000 1 0]);
mytf1 = tf([  0 0 1], [   1 Resist/Induct 1/(Cap*Induct) ]);
mytf2 = tf([0 0 0 1], [ 1 Resist/Induct 1/(Cap*Induct) 0 ]);

figure(1); step(mytf1);
figure(2); impulse(mytf1);
figure(3); step(mytf2);    title("Ramp Response");

disp(stepinfo(mytf1));
% disp(stepinfo(mytf2));