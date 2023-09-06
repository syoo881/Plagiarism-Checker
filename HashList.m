%Function to calculate and output hash31 values for every string in 
% a cell array of strings
%Author: Seth Yoo
%Input: cell_a - A 1D cell array of strings of length n
%Output: hashes - A 1D array of hash values of length n, where each hash
%value is created using the input strings

function[hashes] = HashList(cell_a)

%Setting hashes as an empty double array
hashes = double.empty;

    %Using for loop and calling in the function Hash31 to convert cell
    %strings into sequence of hashed values
    for i = 1:length(cell_a)
        hashes(i) = Hash31(cell_a{i});
    end

end