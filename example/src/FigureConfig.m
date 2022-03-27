%% Roll
fig.roll.flag = 1;
fig.roll.figname = 'Roll AP';
fig.roll.subplot_config = [3 1];

title = {'','',''}';
xlabel = {'Time [s]','Time [s]','Time [s]'}';
ylabel = {'Roll Angle [deg]','Roll Rate [deg/s]','DA [deg]'}';
xlim = [-inf,inf;-inf,inf;-inf,inf];
ylim = [-inf,inf;-inf,inf;-inf,inf];
fig.roll.subplot = table(title,xlabel,ylabel,xlim,ylim);
clear xlabel ylabel title xlim ylim

%% Pitch
fig.pitch.flag = 1;
fig.pitch.figname = 'Pitch AP';
fig.pitch.subplot_config = [3 1];

title = {'','',''}';
xlabel = {'Time [s]','Time [s]','Time [s]'}';
ylabel = {'Pitch Angle [deg]','Pitch Rate [deg/s]','DE [deg]'}';
xlim = [-inf,inf;-inf,inf;-inf,inf];
ylim = [-inf,inf;-inf,inf;-inf,inf];
fig.pitch.subplot = table(title,xlabel,ylabel,xlim,ylim);
clear xlabel ylabel title xlim ylim

%% Overview
fig.overview.flag = 1;
fig.overview.figname = 'Overview';
fig.overview.subplot_config = [3 3];

title = {'','',''...
    ,'','',''...
    ,'','',''}';
xlabel = {'Time [s]','Time [s]','Time [s]'...
    ,'Time [s]','Time [s]','Time [s]'...
    ,'Time [s]','Time [s]','Time [s]'}';
ylabel = {'Roll Angle [deg]','Pitch Angle [deg]','Yaw Angle [deg]'...
    'Roll Rate [deg/s]','Pitch Rate [deg/s]','Yaw Rate [deg/s]'...
    ,'DA [deg]','DE [deg]','DR [deg]'}';
xlim = [-inf,inf;-inf,inf;-inf,inf...
    ;-inf,inf;-inf,inf;-inf,inf...
    ;-inf,inf;-inf,inf;-inf,inf];
ylim = [-inf,inf;-inf,inf;-inf,inf...
    ;-inf,inf;-inf,inf;-inf,inf...
    ;-inf,inf;-inf,inf;-inf,inf];
fig.overview.subplot = table(title,xlabel,ylabel,xlim,ylim);
clear xlabel ylabel title xlim ylim

%% Single
fig.single.flag = 1;
fig.single.figname = 'Single';
fig.single.subplot_config = [1 1];

title = {''}';
xlabel = {'X Label'}';
ylabel = {'Y Label'}';
xlim = [-inf,inf];
ylim = [-inf,inf];
fig.single.subplot = table(title,xlabel,ylabel,xlim,ylim);
clear xlabel ylabel title xlim ylim