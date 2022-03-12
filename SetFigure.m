function [fig_handle,fig_num] = SetFigure(figure_name,first_idx)
% Author: Khoo Yi Shao
% Opens up clean figure according to figure_name
%
% Benefits: 
% 1) Function does not need to know how many figure to plot
% 2) fig_num.name returns figure number
% 3) Set the figure name and style
% 4) fig_handle allows you to point back to the defined figure
% 
% Notes:
% 1) When calling subplot out of fcn, re-call hold,grid,legend

    for u = first_idx : first_idx + length(figure_name)-1
    
        % Set i to start from 1
        i = u-first_idx+1; 
        % fig_num.Roll = 101; - for example only
        eval(strcat(strcat('fig_num.',figure_name{i}),' = u;'));
        % fig_handle.Roll = figure(figure_number);
        eval(strcat(strcat('fig_handle.',figure_name{i}),'= figure(u);')); 

        set(figure(u),'Name',figure_name{i},'WindowStyle','docked','NumberTitle','off');
        clf; hold on; grid on; legend;
    end 

end