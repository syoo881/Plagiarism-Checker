%Function to compare 2 arrays, and returns index position of any matches
%that occur in array 2, of array 1's elements
%Author: Seth Yoo
%Input: a1 - 1D Array 1
%       a2 - 1D Array 2
%Output: index_pos -  A 1D array that has index positions of all array 1 
% values also found in array 2

function[index_pos] = FindMatchIndices(a1, a2)

%Initialising output as an empty double array
index_pos = double.empty;

b = 0;
    %Using a for loop to loop until length of array 1
    for i = 1:length(a1)
    %Using if statement, and strfind to see if matches occur
        if length(strfind(a2, a1(i))) >  0  
    %If matches occur, output's values will return index
    %position matches
            b = b+1;
            index_pos(b) = i;
       end
    end
end