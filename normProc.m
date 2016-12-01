function xn = normProc(x)
    datasize = size(x);
    numofrow = datasize(1);
for i = 1:1:numofrow/2
    max_in_data = max(x(i, :));
    min_in_data = min(x(i, :));
    x(i, :) = (x(i, :) - min_in_data)/(max_in_data - min_in_data); 
end
    xn = x;
end