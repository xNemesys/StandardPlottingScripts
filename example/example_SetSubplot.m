clc; clear;

addpath('..')

%% Config
fig_name = {'Roll','Pitch','Yaw'}';         % Name of the Figure
fig_num = 101;                              % First Figure Index
subplot_config = [3 1; 3 1; 3 1];           % Subplot row/col for each figure


%% Function

[fig_handle,fig_num] = SetFigure(fig_name,fig_num);
axes = SetSubplot(fig_handle,subplot_config);

%% Plot

% Below are just some examples of plotting with legends

figure(fig_handle.Pitch);
subplot(3,1,2);
plot([1:100],[101:200],'DisplayName','Pitch Rate 1','LineStyle','--');
subplot(3,1,3);
plot([1:100],[1:100]*23,'DisplayName','DE 1','Color','r');

figure(fig_handle.Roll);
subplot(3,1,1);
plot([1:100],[101:200],'DisplayName','Roll Angle 1','LineWidth',0.9);

figure(fig_handle.Pitch);
subplot(3,1,2);
plot([1:100],[151:250],'DisplayName','Pitch Rate 2');