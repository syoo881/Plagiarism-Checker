%Function to create a 2D array of windows with size w, given an array of
%integers
%Author: Seth Yoo
%Input: w - Window size
%       a - 1D array
%Output: windows - A 2D array where each row is a window that has length w 
% of integers of the input array


function[windows] = Window(w, a)
%Initialising windows as a 1D array of zeros with length w
windows = zeros(1,w);
%i and r both initialised as 1, such that both remain the same value.
i = 1;
r = 1;
%c is set to be w, as the window has w amount of columns(length is w)
c = w;

    %Using if statement for when w is greater than length of array a
    if w > length(a)
        windows = a;
    %Using while loop to fill in window with values from input array a
    else
        while w <= length(a)
        windows(r,1:c) = a(i:w);
        i = i+1;
        w = w+1;
        r = r+1;
        end
    end
end


