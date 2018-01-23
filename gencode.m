% Load the pre-trained network

[laneNet, coeffMeans, coeffStds] = getLaneDetectionNetwork();

args = "{ones(227,227,3,'single'),ones(1,6,'double'),ones(1,6,'double')}"
rr= RoboNouMiChiClass(1,2);
genCodeOnlyValue = true;
rr.genCode('lib','detect_lane','embed','normal',genCodeOnlyValue, args);

% export mean and std values from the trained network for use in testing
codegendir = fullfile(pwd, str2mat(rr.codepath));
fid = fopen(fullfile(codegendir,'mean.bin'), 'w');
A = [coeffMeans coeffStds];
fwrite(fid, A, 'double');
fclose(fid);

copyfile('*.c*',codegendir);
copyfile('*.mk',codegendir);