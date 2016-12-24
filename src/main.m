function main()
  clear all;

  X = [-1, -1, 1;   1, -1, -1;   1, 1, 1;   -1, 1, 1;   -1, -1, -1;   1, 1, -1];
  P = [1, -1, 1;   -1, 1, -1];

  W = hopfield_learning(P);
  S = hopfield_working(W, X);

  disp('X ='), disp(X), disp('P ='), disp(P);
  disp('W ='), disp(W), disp('S ='), disp(S);
end;
