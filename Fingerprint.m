%Function to calculate a documents fingerprint using a winnowing algorithm.
%Returns the fingerprint as a 2D array with 2 rows
%Author: Seth Yoo
%Input: windows - A 2D array of windows, where the column size of the window is the 
%window length.
%Output: fprint - A fingerprint 2D array with 2 rows. The 2D array contains
%a hash value and position pair (value is first row, position is second row)
function[fprint] = Fingerprint(windows)

[row,col] = size(windows);
%Setting output as an empty double array
fprint = double.empty;
[~,pos] = RightMin(windows(1,1:col));
old_pos = pos;
a = 0;
    for i = 1:row
        [m,pos] = RightMin(windows(i,1:col));
        if  pos < old_pos
            old_pos = pos;
        elseif pos >= old_pos
            a = a+1;
            fprint(1,a) = m;
            fprint(2,a) = pos + i -1;
            old_pos = pos;
        end 
    end  
end





