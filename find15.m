function ind = find15(PM_city)
    
    temp = abs(PM_city - 15);
    [M, ind] = min(temp);

end
