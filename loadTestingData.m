function [outputData] = loadTestingData(dataName)

ignoredPointNumber = 25; %first 0.1s -> 25points
startPoint = ignoredPointNumber+40;
dataNumber = 5;

channel_start = 1;
channel_end = 124;

outputData = [];

datasize = size(dataName);
numberOfDataSet = datasize(1);

for k = 1:1:numberOfDataSet
    s = strcat('./data/',dataName(k, :));
    load(s);
    data = reshape(instance,[129, 275*60]);
    tempLabel = repelem(label, 275);
    label = tempLabel.';
    data = [data; label].';
    procdata = [];
    for i=startPoint:275:275*60
        procdata = [procdata ; data(i:i+dataNumber,:)];
    end
    normProcdata1 = normProc(procdata(:,channel_start:channel_end));
    procdata = [normProcdata1, procdata(:,130:130)];
    outputData (:, :, k) = procdata;
end

end
