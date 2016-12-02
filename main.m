testingDataFiles = ['ShenXiaLin.mat    ';];
%                     'ZhangBeiBei.mat   ';
%                     'ChengHoiYan.mat   ';
%                     'ChenHaiYu.mat     ';
%                     'ZhouYi.mat        ';
%                     'FuKuoHao.mat      ';
%                     'KongYuChing.mat   ';
%                     'LiuZiAng.mat      ';
%                     'MaZhenYuan.mat    ';
%                     'OuYangXiaTing.mat ';
%                     'YipKaiYan.mat     ']
datasize = size(testingDataFiles);
numofrow = datasize(1);

testingDataSet = loadTestingData(testingDataFiles);
for i = 1:1:numofrow
    output = classifier(testingDataSet(:,:, i), 4);
end

plot(output);

