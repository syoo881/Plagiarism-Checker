%Function to find the value and position of the rightmost minimum in an
%array of values
%Author: Seth Yoo
%Input: a - a 1D array of values
%Output: m - The minimum value
%        pos - The rightmost position of the minimum value

function[m, pos] = RightMin(a)

%Setting m to be the minimum value of the array
m = min(a);
%Using strfind to find the position of all the minimum in the array
all_pos = strfind(a, m);
%Setting the output to be the rightmost position of the minimum in the
%array
pos = all_pos(length(all_pos));

end