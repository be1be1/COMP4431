function [procdata1, procdata2, procdata3, procdata4, procdata5, procdata6, procdata7, procdata8] = loadData()
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

load('./data/ShenXiaLin.mat');
data1 = reshape(instance,[129, 275*60]);
tempLabel1 = repelem(label, 275);
label1 = tempLabel1.';
data1 = [data1; label1].';
procdata1 = [];
for i=40:275:275*60
    procdata1 = [procdata1 ; data1(i:i+9,:)];
end


load('./data/ZhangBeiBei.mat');
data2 = reshape(instance,[129, 275*60]);
tempLabel2 = repelem(label, 275);
label2 = tempLabel2.';
data2 = [data2; label2].';
procdata2 = [];
for i=40:275:275*60
    procdata2 = [procdata2 ; data2(i:i+9,:)];
end

load('./data/ChengHoiYan.mat');
data3 = reshape(instance,[129, 275*60]);
tempLabel3 = repelem(label, 275);
label3 = tempLabel3.';
data3 = [data3; label3].';
procdata3 = [];
for i=40:275:275*60
    procdata3 = [procdata3 ; data3(i:i+9,:)];
end

load('./data/ChenHaiYu.mat');
data4 = reshape(instance,[129, 275*60]);
tempLabel4 = repelem(label, 275);
label4 = tempLabel4.';
data4 = [data4; label4].';
procdata4 = [];
for i=40:275:275*60
    procdata4 = [procdata4 ; data4(i:i+9,:)];
end

load('./data/FuKuoHao.mat');
data5 = reshape(instance,[129, 275*60]);
tempLabel5 = repelem(label, 275);
label5 = tempLabel5.';
data5 = [data5; label5].';
procdata5 = [];
for i=40:275:275*60
    procdata5 = [procdata5 ; data5(i:i+9,:)];
end

load('./data/KongYuChing.mat');
data6 = reshape(instance,[129, 275*60]);
tempLabel6 = repelem(label, 275);
label6 = tempLabel6.';
data6 = [data6; label6].';
procdata6 = [];
for i=40:275:275*60
    procdata6 = [procdata6 ; data6(i:i+9,:)];
end

load('./data/KongYuChing.mat');
data7 = reshape(instance,[129, 275*60]);
tempLabel7 = repelem(label, 275);
label7 = tempLabel7.';
data7 = [data7; label7].';
procdata7 = [];
for i=40:275:275*60
    procdata7 = [procdata7 ; data7(i:i+9,:)];
end

load('./data/LiuZiAng.mat');
data8 = reshape(instance,[129, 275*60]);
tempLabel8 = repelem(label, 275);
label8 = tempLabel8.';
data8 = [data8; label8].';
procdata8 = [];
for i=40:275:275*60
    procdata8 = [procdata8 ; data8(i:i+9,:)];
end


end
