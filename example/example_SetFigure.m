clc; clear; close all;

addpath(genpath('..'))

%% Write Fig Config and Call Figure
FigureConfig;
fig = SetFigure(fig,1098);

%% Plot

% Below are just some examples of plotting with legends

if(fig.pitch.flag == 1);
    figure(fig.pitch.handle)
    subplot(3,1,2);
    plot([1:100],[101:200],'DisplayName','Pitch Rate 1','LineStyle','--');
    subplot(3,1,3);
    plot([1:100],[1:100]*23,'DisplayName','DE 1','Color','r');
end

if(fig.roll.flag ==1)
    figure(fig.roll.handle);
    subplot(3,1,1);
    plot([1:100],[101:200],'DisplayName','Roll Angle 1','LineWidth',0.9);
end