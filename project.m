clear; close all;
[data1, data2, data3, data4, data5, data6, data7, data8] = loadData();
right = 0;
total = 0;
options.MaxIter = 10;

[traindata,testdata] = randomSplit(data1,0.9);

traindata = traindata;
testdata = testdata;

shape = size(data2);
numofcol = shape(2);
numofrow = shape(1);

data = [data1;data2;data6];
svmmodel = svmtrain(data(:,1:numofcol-2),data(:,numofcol));

predlabel = [];
for i = 1:1:numofrow
    total = total + 1;%counter
    predlabel = svmclassify(svmmodel,data7(i,1:numofcol-2));
    if(data7(i,numofcol)==predlabel) %if the same
        right = right + 1;%counter
    end
end
total
correct_rate = right/total