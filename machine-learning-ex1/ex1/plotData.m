function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);
% Find Indices of Positive and Negative Examples

pos = find(y==1); neg = find(y == 0);

figure; % open a new figure window
% Plot Examples
plot(X(pos, 1), X(pos, 2), ' k+' , ' LineWidth' , 2, ...
' MarkerSize' , 7);
plot(X(neg, 1), X(neg, 2), ' ko' , ' MarkerFaceColor' , ' y' , ...
' MarkerSize' , 7);
%plot(x, y, 'rx' , 'MarkerSize' , 10); % Plot the data
ylabel(' Profit in $10,000s' ); % Set the y?axis label
xlabel(' Population of City in 10,000s' ); % Set the x?axis label
xlim([4 24]);
ylim([-5 25]);

% ============================================================

end
