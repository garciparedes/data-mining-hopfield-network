function w = hopfield_learning(x_p)
  w = zeros(size(x_p,2),size(x_p,2));
  for i = 1:size(w,1);
      for j = 1:size(w,2);
          if(i ~= j);
              w(i,j) = sum(x_p(:,i) .* x_p(:,j));
          endif;
      endfor;
  endfor;
end
