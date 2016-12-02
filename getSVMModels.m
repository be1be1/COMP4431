function [svmmodels] = getSVMModels(numOfTrainingDataSet)
    svmmodels = [];
    
    [outputdata, startPoint, dataNumber] = loadData();
    options.MaxIter = 100000;

    shape = size(outputdata(:,:,:));
    numofcol = shape(2);
    numofrow = shape(1);
    numofdataset = shape(3);
    if numOfTrainingDataSet == 2
        for q = 1:1:numofdataset
            for r = q+1:1:numofdataset
                trainingData = [randomData(outputdata(:,:,q)); randomData(outputdata(:,:,r))];
                svmmodel = svmtrain(trainingData(:,1:numofcol-2),trainingData(:,numofcol));
                svmmodels = [svmmodels, svmmodel];
            end
        end
    end
    if numOfTrainingDataSet == 3
        for q = 1:1:numofdataset
            for r = q+1:1:numofdataset
                for s = r+1:1:numofdataset
                    trainingData = [randomData(outputdata(:,:,q)); randomData(outputdata(:,:,r)); randomData(outputdata(:,:,s))];
                    svmmodel = svmtrain(trainingData(:,1:numofcol-2),trainingData(:,numofcol));
                    svmmodels = [svmmodels, svmmodel];
                end
            end
        end
    end
    if numOfTrainingDataSet == 4
        for q = 1:1:numofdataset
            for r = q+1:1:numofdataset
                for s = r+1:1:numofdataset
                    for t = s+1:1:numofdataset
                        trainingData = [randomData(outputdata(:,:,q)); randomData(outputdata(:,:,r)); randomData(outputdata(:,:,s)); randomData(outputdata(:,:,t))];
                        svmmodel = svmtrain(trainingData(:,1:numofcol-2),trainingData(:,numofcol));
                        svmmodels = [svmmodels, svmmodel];
                    end
                end
            end
        end
    end
end