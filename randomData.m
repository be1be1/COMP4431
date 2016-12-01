function [data] = randomData(data)
    datasize = size(data);
    numofrow = datasize(1);
    
    for i = 1:1:numofrow/2
        r = randi([1,numofrow],2,1);
        tmp = data(r(1,1),:);
        data(r(1,1), :) = data(r(2,1), :);
        data(r(2,1), :) = tmp;
    end
end