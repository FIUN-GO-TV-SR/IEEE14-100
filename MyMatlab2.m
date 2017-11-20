%% MyMatlab2
% This script creates the 'solution2.txt' file
%addpath('dependencies')
global pfotemp
scenarioDir = pfotemp;
contingFile = fullfile(scenarioDir, 'contingency.csv');
mpc = convert2mpc(rawFile,genFile);
contingencies = loadContingencies(mpc,contingFile);
create_solution2(solutionMPC, contingencies,1);