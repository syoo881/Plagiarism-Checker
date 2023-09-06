%Function to call calculate  hash value from an array of values
%Author: Seth Yoo
%Input: a - a 1D array of values
%Ouptut: hash_integer - an integer values generated after going through 
% the hash13 algorithm

function[hash_integer] = Hash31(a)

%Initialising h, i and hash_size
h = 0;
i = 1;
hash_size = 2^20;
    %Using a while loop to calculate h using hash31 algorithm
    while i<=length(a)
        h = a(i) + 31 * h;
        h = mod(h,hash_size);
        i = i+1;

    end
%Setting output, hash_integer as h
hash_integer = h;

end