function xn = normProc(x)
    datasize = size(x);
    numofrow = datasize(1);
    numofcol = datasize(2);
for i = 1:1:numofcol
    max_in_data = max(x(:, i));
    min_in_data = min(x(:, i));
    mean_in_data = mean(x(:, i));
    x(:, i)  = (x(:, i) - mean_in_data) / (max_in_data - min_in_data);
end
% for i = 1:1:numofrow
%     tmp = x(i, :);
%     max_in_data = max(x(i, :));
%     min_in_data = min(x(i, :));
%     x(i, :) = (x(i, :) - min_in_data)/(max_in_data - min_in_data); 
% end
    xn = x .* x .* x;
% end