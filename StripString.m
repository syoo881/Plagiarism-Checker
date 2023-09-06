%Function to remove all whitespace/other unprintable characters from a
%string, and also convert all uppercase to lowercase
%Author: Seth Yoo
%Input: s - A string
%Output: stripped - Array of characters that has all whitespace/other unprintable
%characters removed


function[stripped] = StripString(s)
%Setting output stripped to be an empty char array
stripped = char.empty;
%Initialising n
n = 0;

    %Using for loop to pull out printable characters from the string
    for i = 1:length(s)
        %if loop to filter out whitespace/other unprintable characters
        if s(i) >= 33 && s(i) <= 126
           n = n+1;
           %Setting output array values to be the filtered character
           stripped(n) = char(s(i));
        end
    end

%Setting output array to all be lowercase
stripped = lower(stripped);

end