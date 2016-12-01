clear; close all;
[outputdata, startPoint, dataNumber] = loadData();
right = 0;
total = 0;
options.MaxIter = 100000;

[traindata,testdata] = randomSplit(outputdata(:,:,1),0.9);

traindata = traindata;
testdata = testdata;

shape = size(outputdata(:,:,2));
numofcol = shape(2);
numofrow = shape(1);
fileID = fopen('exp.txt','A');
fprintf(fileID,'\n');
fprintf(fileID,datestr(now, 'dd-mm-yyyy HH:MM:SS'));
fprintf(fileID,'  #  start point: %d', startPoint);
fprintf(fileID,'  #  data number: %d', dataNumber);
fprintf(fileID,'\n');

for testGroup = 1:1:7
    for q = 1:1:7
        if q == testGroup 
            continue;
        end
        for r = q+1:1:7
            if r == testGroup 
                continue;
            end
            for s = r+1:1:7
                if s == testGroup 
                    continue;
                end
                for t = s+1:1:7
                    if t == testGroup 
                        continue;
                    end
                    data = [outputdata(:,:,q);outputdata(:,:,r);outputdata(:,:,s);outputdata(:,:,t)];
                    svmmodel = svmtrain(data(:,1:numofcol-2),data(:,numofcol));

                    total = 0;
                    right = 0;

                    predlabel = [];
                    for i = 1:1:numofrow
                        total = total + 1;%counter
                        testData = randomData(outputdata(:,:,testGroup));
                        predlabel = svmclassify(svmmodel,testData(i,1:numofcol-2));
                        if(testData(i,numofcol)==predlabel) %if the same
                            right = right + 1;%counter
                        end
                    end
                    total
                    correct_rate = right/total
                    fprintf(fileID,'data_used: [%d, %d, %d, %d]  #  ',q, r, s, t);
                    fprintf(fileID,'test_data: [%d]  #  ',testGroup);
                    fprintf(fileID,'total: %d  #  ',total);
                    fprintf(fileID,'correct_rate: %f\n',correct_rate); 
                end
            end
        end
    end
end
fclose(fileID);