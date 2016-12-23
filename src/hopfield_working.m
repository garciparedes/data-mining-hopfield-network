function s = hopfield_working(w,s)
  for index = 1:size(s,1);
    do;
      for i = 1:size(s,2);
        s_old = s(index,:);
        temp = sum(w(i,:) .* s_old);
        if (temp > 0);
          s(index,i) = 1;
        elseif(temp < 0);
          s(index,i) = -1;
        endif;
      endfor;
    until(s_old == s(index,:));
  endfor;
end;
