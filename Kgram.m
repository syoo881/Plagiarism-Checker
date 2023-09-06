%Function to turn a string into a sequence of k-grams, where each element 
% is k characters long
%Author: Seth Yoo
%Input: k - Element length k
%       s - String s
%Output: kg - A cell array of sequences of k-gram, k length long.
function[kg] = Kgram(k, s)

%Setting kg to be an empty cell array
kg = cell.empty;
%Setting kg{1} to be the string, such that if k is longer than length(s), 
%it returns the string in a cell array
kg{1} = s;
%Initialising variable i, to index and input k-grams into the cell array
i = 1;

    %Using while loop to create k-gram sequence as the output
    while k <= length(s)
         kg{i} = s(i:k);
         i = i+1;
         k = k+1;
    end
end


