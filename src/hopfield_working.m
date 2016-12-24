function S = hopfield_working(W,S)
  for index = 1:size(S,1);
    for i = 1:size(S,2);
      do;
        S_old = S(index,:);
        v = sum(W(i,:) .* S_old);
        if (v > 0);
          S(index,i) = 1;
        elseif(v < 0);
          S(index,i) = -1;
        endif;
      until(S_old == S(index,:));
    endfor;
  endfor;
end;
