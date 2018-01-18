if isempty(currentFigures), currentFigures = []; end;
close(setdiff(findall(0, 'type', 'figure'), currentFigures))
clear mex
delete *.mexw64
[~,~,~] = rmdir('C:\Sumpurn\gpucoderdemo_lane_detection\codegen','s');
clear C:\Sumpurn\gpucoderdemo_lane_detection\detect_lane.m
delete C:\Sumpurn\gpucoderdemo_lane_detection\detect_lane.m
clear C:\Sumpurn\gpucoderdemo_lane_detection\getLaneDetectionNetwork.m
delete C:\Sumpurn\gpucoderdemo_lane_detection\getLaneDetectionNetwork.m
delete C:\Sumpurn\gpucoderdemo_lane_detection\README.txt
delete C:\Sumpurn\gpucoderdemo_lane_detection\caltech_cordova1.avi
delete C:\Sumpurn\gpucoderdemo_lane_detection\main_lanenet.cpp
delete C:\Sumpurn\gpucoderdemo_lane_detection\Makefile.mk
delete C:\Sumpurn\gpucoderdemo_lane_detection\Makefile_win.mk
delete C:\Sumpurn\gpucoderdemo_lane_detection\make_win.bat
clear
load old_workspace
delete old_workspace.mat
delete C:\Sumpurn\gpucoderdemo_lane_detection\cleanup.m
cd C:\Sumpurn
rmdir('C:\Sumpurn\gpucoderdemo_lane_detection','s');
