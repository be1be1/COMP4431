clear; close all;
outputdata = loadData();
right = 0;
total = 0;
options.MaxIter = 10;

[traindata,testdata] = randomSplit(outputdata(:,:,1),0.9);

traindata = traindata;
testdata = testdata;

shape = size(outputdata(:,:,2));
numofcol = shape(2);
numofrow = shape(1);
fileID = fopen('exp.txt','w');
fprintf(fileID,datestr(now, 'dd-mm-yyyy HH:MM:SS'));
fprintf(fileID,'\n');

for q = 1:1:6
    for r = q:1:6
        for s = r:1:6
            data = [outputdata(:,:,q);outputdata(:,:,r);outputdata(:,:,s)];
            svmmodel = svmtrain(data(:,1:numofcol-2),data(:,numofcol));
            
            total = 0;
            right = 0;
            
            predlabel = [];
            for i = 1:1:numofrow
                total = total + 1;%counter
                data7 = outputdata(:,:,7);
                predlabel = svmclassify(svmmodel,data7(i,1:numofcol-2));
                if(data7(i,numofcol)==predlabel) %if the same
                    right = right + 1;%counter
                end
            end
            total
            correct_rate = right/total
            fprintf(fileID,'data_used: [%d, %d, %d]  #  ',q, r, s);
            fprintf(fileID,'total: %d  #  ',total);
            fprintf(fileID,'correct_rate: %f\n',correct_rate);
        end
    end
end
fclose(fileID);