clc; clear; close all;

addpath('..')

%% Config
figure_name = {'Roll','Pitch','Yaw'}';
figure_num = 101;

%% Function

[fig_handle,fig_num] = SetFigure(figure_name,figure_num);

%% Plot

figure(fig_handle.Pitch);
subplot(3,3,1);hold on; grid on; legend();
plot((1:100),(101:200),'DisplayName','FirstPlot')

% Intentionally points away from the pitch figure and points back
% to demonstrate the benefits of having the figure handle
% 
% Does not need to redefine hold on; grid on;
% Can overlay plots easily
%

figure(fig_handle.Roll);
subplot(3,3,5);hold on; grid on; legend();
plot((1:100),(101:200),'DisplayName','RollPlot')
figure(fig_handle.Pitch); subplot(3,3,1);
plot((1:100),(201:300),'DisplayName','SecondPlot')
