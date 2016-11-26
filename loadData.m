function [data1, data2] = loadData()
% load('./original_ShenXiaLin.mat');
% data1 = reshape(instance,[129, 275*60]);
% tempLabel1 = repelem(label, 275);
% label1 = tempLabel1.';
% k = 170;
% selectdata = [];
% for i=1:275
%     selectdata = [selectdata, data1(k:k+10)];
%     k = k+275;
% end
% data1 = [selectdata; label1].';
% 
% 
% load('./original_ZhangBeiBei.mat');
% data2 = reshape(instance,[129, 275*60]);
% tempLabel2 = repelem(label, 275);
% label2 = tempLabel2.';
% k = 170;
% selectdata2 = [];
% for i=1:275
%     selectdata2 = [selectdata2, data2(k:k+10)];
%     k = k+275;
% end
% data2 = [selectdata2; label2].';

load('./original_ShenXiaLin.mat');
data1 = reshape(instance,[129, 275*60]);
tempLabel1 = repelem(label, 275);
label1 = tempLabel1.';
max_in_data1 = max(data1(:));
min_in_data1 = min(data1(:));
data1 = (data1 - min_in_data1)/(max_in_data1 - min_in_data1);
data1 = [data1; label1].';

load('./original_ZhangBeiBei.mat');
data2 = reshape(instance,[129, 275*60]);
tempLabel2 = repelem(label, 275);
label2 = tempLabel2.';
max_in_data2 = max(data2(:));
min_in_data2 = min(data2(:));
data2 = (data2 - min_in_data2)/(max_in_data2 - min_in_data2);
data2 = [data2; label2].';

end
