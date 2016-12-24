function main()
  clear all;

  X = [-1, -1, 1;   1, -1, -1;   1, 1, 1;   -1, 1, 1;   -1, -1, -1;   1, 1, -1]
  P = [1, -1, 1;   -1, 1, -1]

  W = hopfield_learning(P)
  S = hopfield_working(W, X)
end;
main();
