close all;
clear all;
clc;

prompt = "Select the desired torque command to generate: \n";
"1. EPA Torque Command Reverse";
"2. EPA Torque Command Forward";
x = input(prompt);

switch (x)

    case 1
    %Reverse 
    load('EPATorqueOutput_Reverse.mat','data');
    TqCmd_Table = timeseries2timetable(data);
    TqCmd_Array = table2array(TqCmd_Table);
    TqCmd_Array_Reshaped = reshape(TqCmd_Array,[100,151]);
    TqCmdEPA_Reverse_Final = transpose(TqCmd_Array_Reshaped);


    case 2
    %Forward
    load('EPATorqueOutput_Forward.mat','data');
    TqCmd_Table = timeseries2timetable(data);
    TqCmd_Array = table2array(TqCmd_Table);
    TqCmd_Array_Reshaped = reshape(TqCmd_Array,[100,151]);
    TqCmdEPA_Forward_Final = transpose(TqCmd_Array_Reshaped);

end