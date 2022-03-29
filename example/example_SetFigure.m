clc; clear; close all;

addpath(genpath('..'))

%% Write Fig Config and Call Figure
FigureConfig; % Please take reference from this file for "fig"
fig.pitch.flag = 0; % Disable pitch plots
fig = SetFigure(fig,1098);

%% Get Plot Colours
plotColours = getPlotColours; % Sometimes ran out of colour from 'r' 'k', so decided to make this

%% Plot

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

if(fig.overview.flag ==1)
    figure(fig.overview.handle);
    subplot(3,3,1);
    plot([1:100],[101:200],'DisplayName','Roll Angle 1',LineWidth=0.9);
    subplot(3,3,4);
    plot([1:100],[101:200],'DisplayName','Pitch Angle 1','Color',plotColours{5});
end
