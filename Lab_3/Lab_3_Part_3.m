close all; clear all; clc; syms s;
Mass = 1500;            % m
DampingK = 50;          % b

A = ([0 -DampingK/Mass]); B = ([0; 1/Mass]); C = ([1]);
phi = inv((s.*eye(2))-A);   H = C*phi*B;
% pretty(simplify(H));

% mytf1 = tf([0 0 -1], [30*1500 1*1500 0]); mytf2 = tf([0 1], [1500 50]);

mytf1 = tf([0 1], [Mass DampingK ]); 
mytf2 = tf([0 0 1], [Mass DampingK 0]);

figure(1); step(mytf1);
figure(2); impulse(mytf1);
figure(3); step(mytf2); title("Ramp Response");

disp(stepinfo((mytf1)));