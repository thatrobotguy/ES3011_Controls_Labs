close all;
clear all;
clc

% Now the actual MatLab

Mass = 1500;            % m
DampingK = 50;          % b

A = ([-DampingK/Mass]);
B = ([1/Mass]);
C = ([1]);
% D = ([0; 0]);

statespace = ss(A, B, C, 0);
initialConditions = ([1]);
initial(statespace, initialConditions);