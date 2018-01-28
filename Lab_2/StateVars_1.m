close all;
clear all;
clc

% Now the actual MatLab

Mass = 5;               % m
SpringK = 1;            % k
DampingK = 0.5;         % b
InputForce = 2;         % F

A = ([0 1; -DampingK/Mass -SpringK/Mass]);

B = ([0; 1/Mass]);

C = ([1 0; 0 0]);

% D = ([0; 0]);

statespace = ss(A, B, C, 0);

initialConditions = ([1; 1]);

initial(statespace, initialConditions);