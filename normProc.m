function xn = normProc(x)
    datasize = size(x);
    numofrow = datasize(1);
    numofcol = datasize(2);
    
% for i = 1:1:numofcol
%     max_in_data = max(x(:, i));
%     min_in_data = min(x(:, i));
%     x(:, i) = (x(:, i) - min_in_data)/(max_in_data - min_in_data); 
% end
for i = 1:1:numofcol
    max_in_data = max(x(i, :));
    min_in_data = min(x(i, :));
    x(i, :) = (x(i, :) - min_in_data)/(max_in_data - min_in_data); 
end
% for i = 1:1:128
%     for j = 1:1:60
%     max_in_data = max(x(10*(j-1) + 1: 10*j, i));
%     min_in_data = min(x(10*(j-1) + 1: 10*j, i));
%     x(10*(j-1) + 1: 10*j, i) = (x(10*(j-1) + 1: 10*j, i) - min_in_data)/(max_in_data - min_in_data); 
%     end
% end
    xn = 10 * x;
end