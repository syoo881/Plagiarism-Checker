%Function to calculate the similarity score, by taking matched positions of 2 strings
%and calculating the percentage of the matches.
%Author: Seth Yoo
%Input: array - 1D array that contains lists of matched positions
%           k -  Length of each match
%         ssl - StringStripLength, the total length of the string that was
%               turned into k-grams
%Output: sim_score - The percentage of the string matches (as a decimal)

function[sim_score] = SimilarityScore(array,k,ssl)
%Setting up a 1D array matched_pos, of zeros with length ssl
matched_pos = zeros(1,ssl);
    %Using for loop to set matched positions as 1 in array matched_pos
    for i = 1:length(array)
        matched_pos(1,array(i):(array(i)+k-1)) = 1;
  %If array matched_pos is set a value of 1 beyond ssl, end the for loop
        if matched_pos(1,ssl) == 1
            break
        end
    end
%Checking how many values were set as a match in array matched_pos
matches = length(strfind(matched_pos,1));
%Calculating sim_score using the matches, as a percentage of the ssl
sim_score = matches/ssl;

end

