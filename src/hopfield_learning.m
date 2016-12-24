function W = hopfield_learning(P)
  W = zeros(size(P,2),size(P,2));
  for i = 1:size(W,1);
    for j = 1:size(W,2);
      if(i ~= j);
        W(i,j) = sum(P(:,i) .* P(:,j));
      endif;
    endfor;
  endfor;
end
