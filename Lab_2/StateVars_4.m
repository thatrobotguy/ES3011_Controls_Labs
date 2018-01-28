close all;
clear all;
clc

% Now the actual MatLab

RotorMotI = 3E-6;       % kg.m^2                      
MotFricK = 3.5E-6;      % N.s/m
ElFandMotTorqK = 0.025; % 0.025 Volts/radians/second  K
Resist = 5;             % Ohms
Induct = 3E-6;          % Henries

A = ([0 1 0 0; 0 MotFricK/RotorMotI 0 ElAandMotTorqK/RotorMotI; 0 0 1 0; ElFandMotTorqK/Resist 0 -Induct/Resist 0]);
B = ([0 0; 1/RotorMotI 0; 0 0; 0 -1/Resist]);
C = ([1; 0]);

% D = ([0; 0]);

statespace = ss(A, B, C, 0);

initialConditions = ([1; 1]);

initial(statespace, initialConditions);