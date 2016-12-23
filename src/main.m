#
# Self-organizing map
#
# Sergio Garcia Prado
# garciparedes.me
#

function main()
  clear all

  x = [
      -1, -1,  1;
       1, -1, -1;
       1,  1,  1;
      -1,  1,  1;
      -1, -1, -1;
       1,  1, -1;
  ]

  x_p = [
       1, -1,  1;
      -1,  1, -1;
  ];

  w = hopfield_learning(x_p)
  s = hopfield_working(w, x)
end;
