close all; clear all; clc; syms s; % m k b f;
% Mass = 5;               % m
m = 5;
% SpringK = 1;            % k
k = 1;
% DampingK = 0.5;         % b
b = 0.5; InputForce = 2;         % F

A =([0 1; -b/m -k/m]);  B =([0; 1/m]); C =([1 0]); D =([0; 0]); 
% -b/m -k/m ]); These are what I had
phi = inv((s.*eye(2))-A);           H = C*phi*B+D;
pretty(simplify(H));

% mytf1 = tf([0 0 2], [10 2 1]);  mytf2 = tf([0 0 0 2], [10 2 1 0]);
mytf1 = tf([0 0 1], [1 b/m k/m]); mytf2 = tf([0 0 0 1], [1 b/m k/m 0]);
% mytf1 = tf([2], [10 1 2]); mytf2 = tf([0 0 0 2], [10 1 1 0]);

figure(1); step(mytf1);
figure(2); impulse(mytf1);
figure(3); step(mytf2); title("Ramp Response");

disp(stepinfo((mytf1)));