close all;
clear all;
clc

% Now the actual MatLab
J = 3E-6;       % kg.m^2                      
b = 3.5E-6;      % N.s/m
K = 0.025; % 0.025 Volts/radians/second  K
R = 5;             % Ohms
L = 3E-6;          % Henries

A = ([0 1 0; 0 -b/J K/J; 0 -K/L -R/L]);
B = ([0; 0; 1/L]);
C = ([0 1 0;]);
% D = ([0; 0]);

statespace = ss(A, B, C, 0);
initialConditions = ([0 1 0]);
initial(statespace, initialConditions);