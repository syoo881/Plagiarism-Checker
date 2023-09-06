%Function to compare 2 fingerprints, to see which positions the hash values
% of each fingerprint match one another
%Author: Seth Yoo
%Input: f1 - Fingerprint for string 1 (hash values)
      %f2 - Fingerprint for string 2 (hash values)
%Output: p1 - Index positions of fingerprint 1 hash values found in fingerprint 2
      %  p2 - Index positions of fingerprint 2 hash values found in fingerprint 1

function[p1,p2] = FindMatchPositions(f1,f2)

%Setting p1 and p2 as an empty array
p1 = double.empty;
p2 = double.empty;
%Setting sizes of f1 and f2
[row1,col1] = size(f1);
[row2,col2] = size(f2);

%Pulling out row 1 (hash values) of f1, and finding matches
f1_match = FindMatchIndices(f1(1, 1:col1), f2(1, 1:col2));
   %Using for loop to index the match positions into the output array p1
    for i = 1:length(f1_match)
        p1(i) = f1(2,f1_match(i));
    end
%Pulling out row 2 (hash values) of f2, and finding matches
f2_match = FindMatchIndices(f2(1, 1:col2), f1(1, 1:col1));
    %Using for loop to index the match positions into the output array p2
    for i = 1:length(f2_match)
        p2(i) = f2(2,f2_match(i));
    end
end
