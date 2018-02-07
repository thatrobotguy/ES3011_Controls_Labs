close all; clear all; clc
syms s;

Mass = 1500;            % m
DampingK = 50;          % b

A = ([0 -DampingK/Mass]);
B = ([0; 1/Mass]);
C = ([1]);
% D = ([0; 0]);

phi = inv((s.*eye(2))-A);   H = C*phi*B;
pretty(simplify(H));

mytf1 = tf([0 0 -1], [30*1500 1*1500 0]);
mytf2 = tf([0 1], [1500 50]);
% step(mytf1);
impulse(mytf1);
% step(mytf2);
disp(stepinfo(step(mytf1)));