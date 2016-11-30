function [outputData, startPoint, dataNumber] = loadData()

ignoredPointNumber = 25; %first 0.1s -> 25points
startPoint = ignoredPointNumber+40;
dataNumber = 5;

channel_start = 1;
channel_end = 124;

outputData = [];

load('./data/ShenXiaLin.mat');
data1 = reshape(instance,[129, 275*60]);
tempLabel1 = repelem(label, 275);
label1 = tempLabel1.';
data1 = [data1; label1].';
procdata1 = [];
for i=startPoint:275:275*60
    procdata1 = [procdata1 ; data1(i:i+dataNumber,:)];
end
normProcdata1 = normProc(procdata1(:,channel_start:channel_end));
procdata1 = [normProcdata1, procdata1(:,130:130)];
outputData (:, :, 1) = procdata1;

load('./data/ZhangBeiBei.mat');
data2 = reshape(instance,[129, 275*60]);
tempLabel2 = repelem(label, 275);
label2 = tempLabel2.';
data2 = [data2; label2].';
procdata2 = [];
for i=startPoint:275:275*60
    procdata2 = [procdata2 ; data2(i:i+dataNumber,:)];
end
normProcdata2 = normProc(procdata2(:,channel_start:channel_end));
procdata2 = [normProcdata2, procdata2(:,130:130)];
outputData (:, :, 2) = procdata2;

load('./data/ChengHoiYan.mat');
data3 = reshape(instance,[129, 275*60]);
tempLabel3 = repelem(label, 275);
label3 = tempLabel3.';
data3 = [data3; label3].';
procdata3 = [];
for i=startPoint:275:275*60
    procdata3 = [procdata3 ; data3(i:i+dataNumber,:)];
end
normProcdata3 = normProc(procdata3(:,channel_start:channel_end));
procdata3 = [normProcdata3, procdata3(:,130:130)];
outputData (:, :, 3) = procdata3;

load('./data/ChenHaiYu.mat');
data4 = reshape(instance,[129, 275*60]);
tempLabel4 = repelem(label, 275);
label4 = tempLabel4.';
data4 = [data4; label4].';
procdata4 = [];
for i=startPoint:275:275*60
    procdata4 = [procdata4 ; data4(i:i+dataNumber,:)];
end
normProcdata4 = normProc(procdata4(:,channel_start:channel_end));
procdata4 = [normProcdata4, procdata4(:,130:130)];
outputData (:, :, 4) = procdata4;

load('./data/FuKuoHao.mat');
data5 = reshape(instance,[129, 275*60]);
tempLabel5 = repelem(label, 275);
label5 = tempLabel5.';
data5 = [data5; label5].';
procdata5 = [];
for i=startPoint:275:275*60
    procdata5 = [procdata5 ; data5(i:i+dataNumber,:)];
end
normProcdata5 = normProc(procdata5(:,channel_start:channel_end));
procdata5 = [normProcdata5, procdata5(:,130:130)];
outputData (:, :, 5) = procdata5;

load('./data/KongYuChing.mat');
data6 = reshape(instance,[129, 275*60]);
tempLabel6 = repelem(label, 275);
label6 = tempLabel6.';
data6 = [data6; label6].';
procdata6 = [];
for i=startPoint:275:275*60
    procdata6 = [procdata6 ; data6(i:i+dataNumber,:)];
end
normProcdata6 = normProc(procdata6(:,channel_start:channel_end));
procdata6 = [normProcdata6, procdata6(:,130:130)];
outputData (:, :, 6) = procdata6;

load('./data/KongYuChing.mat');
data7 = reshape(instance,[129, 275*60]);
tempLabel7 = repelem(label, 275);
label7 = tempLabel7.';
data7 = [data7; label7].';
procdata7 = [];
for i=startPoint:275:275*60
    procdata7 = [procdata7 ; data7(i:i+dataNumber,:)];
end
normProcdata7 = normProc(procdata7(:,channel_start:channel_end));
procdata7 = [normProcdata7, procdata7(:,130:130)];
outputData (:, :, 7) = procdata7;

load('./data/LiuZiAng.mat');
data8 = reshape(instance,[129, 275*60]);
tempLabel8 = repelem(label, 275);
label8 = tempLabel8.';
data8 = [data8; label8].';
procdata8 = [];
for i=startPoint:275:275*60
    procdata8 = [procdata8 ; data8(i:i+dataNumber,:)];
end
normProcdata8 = normProc(procdata8(:,channel_start:channel_end));
procdata8 = [normProcdata8, procdata8(:,130:130)];
outputData (:, :, 8) = procdata8;

end
