load('trees.mat');
load('vset', 'vset');
load('classes.mat', 'classes');
load('metrics');

leaves = cell2mat(extractfield(trees, 'leaves'));
numComponents = 20;
numClasses = length(classes);
numTrees = length(trees);

params = struct('numTrees', numTrees, 'numClasses', numClasses, 'numComponents', numComponents);
% metrics = leafMetrics( leaves, params );
% save('metrics.mat', 'metrics');

models = mineComponents(leaves, metrics, vset, params); 
save('components.mat', 'models');