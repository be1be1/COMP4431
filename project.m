clear; close all;
[data1, data2] = loadData();
right = 0;
total = 0;
[traindata,testdata] = randomSplit(data1,0.9);

traindata = traindata;
testdata = testdata;

shape = size(data2);
numofcol = shape(2);
numofrow = shape(1);


svmmodel = svmtrain(traindata(:,1:numofcol-2),traindata(:,numofcol));

predlabel = [];
for i = 1:1:numofrow
    total = total + 1;%counter
    predlabel = svmclassify(svmmodel,data2(i,1:numofcol-2));
    if(data2(i,numofcol)==predlabel) %if the same
        right = right + 1;%counter
    end
end
total
correct_rate = right/total