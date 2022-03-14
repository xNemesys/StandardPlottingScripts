function axes = SetSubplot(fig_handle,subplot_config)
% Author: Khoo Yi Shao
%
% Inputs Required:
% 1) figure handle for the *Opened* figure
% 2) row/column config for each figure i.e. - [3 1; 2 3] 
%
% Use of Function:
% 1) Automatically call hold on, grid on, legend
% 2) Assumes x axis is time -> automatically link x value
% 
% Notes:
% 1) After using, only need to point to figure, subplot and plot
% 2) Always plot with DisplayName to make things neater
%

%% Defensive Code
if(length(fieldnames(fig_handle)) ~= size(subplot_config,1))
    error('Number of subplot config does not match number of figure');
end

%% Main Function Call
   str_cells = fieldnames(fig_handle);
    u = 1;
for i = 1:length(fieldnames(fig_handle))
   
   CurrFig_str = strcat('fig_handle.',str_cells{i}); 
   eval(strcat('figure(',strcat(CurrFig_str,');')));

   row = subplot_config(i,1);
   column = subplot_config(i,2);
   
   Plot_perFigure = row * column;
   
   for ii = 1:Plot_perFigure
       axes(u) = subplot(row,column,ii);
       hold on; grid on; legend;
       u = u + 1;
   end

end
linkaxes(axes,'x')
end

