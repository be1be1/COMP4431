function [output] = classifier(input, numOfTrainingDataSet)
    output = [];
    datasize = size(input);
    numofrow = datasize(1);

    [SVMModels] = getSVMModels(numOfTrainingDataSet);
    modelsize = size(SVMModels);
    numofModels = modelsize(1);
    
    for m = 1:1:numofModels
        total = 0;
        right = 0;
        predlabel = [];
        for i = 1:1:numofrow
            total = total + 1;%counter
            predlabel = svmclassify(SVMModels(k,1),input(i,1:numofcol-2));
            if(input(i,numofcol)==predlabel) %if the same
                right = right + 1;%counter
            end
        end
        total
        correct_rate = right/total
        output = [output, correct_rate];
    end
end