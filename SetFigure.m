function [fig,axes] = setFigure(fig,first_idx)
%
% Example: example_setFigure.m
%
% Description: 
% This function helps to set the REQUIRED figures
% By default, the figure will be docked with no number title
% Figure name will be displayed, with each of the subplots labeled
% 
% Inputs:
% A figure structure with the config of each plots and subplot is required.
% Refer to FigureConfig.m for example
% 

fig_cell = struct2cell(fig);
fig_fields = fieldnames(fig);
u = 1;

for i = 1:length(fig_cell)

    if(fig_cell{i}.flag == 1)
        %% Create figure
        fig_num = first_idx + i - 1;

        % fig.roll.num = 100;
        expression = strcat('fig.',fig_fields(i),'.num',' = fig_num;');
        eval(expression{:});
        % fig.roll.handle = figure(fig_num);
        expression = strcat('fig.',fig_fields(i),'.handle','= figure(fig_num);');
        eval(expression{:});

        set(figure(fig_num),'Name',fig_cell{i}.figname,'WindowStyle','docked','NumberTitle','off');
        clf;

        %% Create subplot
        
        subplot_config = fig_cell{i}.subplot_config;
        row = subplot_config(1);
        column = subplot_config(2);
        subplot_table = fig_cell{i}.subplot;
        for ii = 1:(row*column)

            axes(u) = subplot(row,column,ii);
            hold on; grid on; legend;
            str = subplot_table.title(ii); title(str);
            str = subplot_table.xlabel(ii); xlabel(str);
            str = subplot_table.ylabel(ii); ylabel(str);
            xlim(subplot_table.xlim(ii,:));
            ylim(subplot_table.ylim(ii,:));

            u = u+1;
        end
    end

end
linkaxes(axes,'x');
end