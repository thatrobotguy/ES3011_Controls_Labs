close all;
clear all;
clc

% Now the actual MatLab

Induct = 5;             % Henries
Cap = 300;              % Farads
Resist = 100000;        % Ohms 100k ohms    
Volts = 5;              % Input Voltage

A = ([0 1; -1/(Cap*Induct) -Resist/Induct]);
B = ([0; 1/Induct]);
C = ([1 0; 0 0]);
% D = ([0; 0]);

statespace = ss(A, B, C, 0);
initialConditions = ([1; 1]);
initial(statespace, initialConditions);