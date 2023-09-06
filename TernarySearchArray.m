function[pos] = TernarySearchArray(key, array)


l = 1;
r = length(array);

while (r>= l) 
    m1 = l + floor((r-l)/3);
    m2 = r - floor((r-l)/3);
    if array(m1) == key
        pos = m1;
        return
    elseif array(m2) == key
        pos = m2;
        return
    elseif  key < array(m1)
        r = m1 - 1;
    elseif key> array(m2)
        l = m2 + 1;
    elseif (key>= array(m1)) & (key <= array(m2))
        l = m1 + 1;
        r = m2 - 1;
    end
end
pos = -1;


end